import 'package:artemis/artemis.dart';
import 'package:artemis/client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:raven_oga/graphql/graphQLapi.dart';

// import 'main.dart';

class Home extends StatelessWidget {
  final client = ArtemisClient("https://ogadartapi.herokuapp.com/graphql");

  @override
  Widget build(BuildContext context) {
    var ogaFuture = client.execute<HomeQ, JsonSerializable>(
        HomeQQuery());

    return FutureBuilder<GraphQLResponse<HomeQ>>(
      future: ogaFuture,
      builder: (context, ass) {
        if (ass.connectionState == ConnectionState.done) {

          var nonEmptyBlocks =ass.data.data.home.artBlocks;
          nonEmptyBlocks.removeWhere((b)=>b.items.isEmpty);

          return Container(
              child: DefaultTabController(
            length: nonEmptyBlocks.length,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildFeatured(context,chooseHeader(ass.data.data.home)),
                TabBar(
                  isScrollable: true,
                  tabs: <Widget>[
                    for (var x in nonEmptyBlocks)
                      Tab(
                        text: x.title,
                      )
                  ],
                )
              ],
            ),
          ));
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  HomeQArtItem chooseHeader(HomeQHome home){
    var featured = home.artBlocks.lastWhere(
      (h)=>h.items.length>0 && !h.items.first.previewImages.first.isAudio
    );
    return featured.items.first;
  }

  Widget buildFeatured(BuildContext context, HomeQArtItem item){
    return Container(
      height: MediaQuery.of(context).size.height/2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            item.previewImages.first.fullUrl
          ),
          fit: BoxFit.cover
        )
      ),
    );
  }

}

class ArtThumbItem extends StatefulWidget {
  final HomeQArtItem item;

  const ArtThumbItem({Key key, this.item}) : super(key: key);

  @override
  _ArtThumbItemState createState() => _ArtThumbItemState();
}

class _ArtThumbItemState extends State<ArtThumbItem> {
  bool hovering = false;

  double get itemHeight => hovering ? 300 : 200;
  double get itemWidth => hovering ? 450 : 300;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MouseRegion(
          onEnter: (pt) => setState(() {
            hovering = true;
          }),
          onExit: (pt) => setState(() {
            hovering = false;
          }),
          child: Container(
            width: 300,
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 300/200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    elevation: hovering ? 4 : 0,
                    child: TweenAnimationBuilder(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        tween:
                            Tween<double>(begin: 1.0, end: hovering ? 1.5 : 1.0),
                        builder: (context, tween, child) {
                          return Transform.scale(
                            scale: hovering ? tween : tween,
                            child: Container(
                              width: 300,
                              height: 200,
                              // child: FittedBox(
                              //     fit: BoxFit.cover,
                              //     child: Image.network(widget.item.imgsrc)),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(widget.item.previewImages.first.previewUrl),
                                      fit: BoxFit.cover)),
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: <Widget>[
                      Builder(
                        builder: (context) {
                          var avatar;
                          try {
                            avatar = CircleAvatar(
                              backgroundImage:
                                  NetworkImage(widget.item.author.thumbnailUrl),
                            );
                          } catch (e) {
                            avatar = CircleAvatar(
                              backgroundColor: Color.lerp(
                                  Colors.red,
                                  Colors.blue,
                                  (widget.item.title.length % 124) / 124),
                              child: Text(widget.item.author.name.substring(0,1)),
                            );
                          }
                          return avatar;
                        },
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Builder(
                              builder: (context) {
                                return Text(
                                  widget.item.author.name,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color),
                                );
                              },
                            ),
                            Text(
                              widget.item.title,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.subhead,
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).chipTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(4)
                        ),
                        padding: EdgeInsets.all(4),
                        child: Center(
                          child: Builder(
                            builder: (context) {
                              return Text(widget.item.license.first != null
                                  ? widget.item.license.first
                                  : "");
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
