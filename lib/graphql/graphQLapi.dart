// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphQLapi.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeQ with EquatableMixin {
  HomeQ();

  factory HomeQ.fromJson(Map<String, dynamic> json) => _$HomeQFromJson(json);

  HomeQHome home;

  @override
  List<Object> get props => [home];
  Map<String, dynamic> toJson() => _$HomeQToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQHome with EquatableMixin {
  HomeQHome();

  factory HomeQHome.fromJson(Map<String, dynamic> json) =>
      _$HomeQHomeFromJson(json);

  String title;

  String urlStr;

  List<HomeQArtBlock> artBlocks;

  @override
  List<Object> get props => [title, urlStr, artBlocks];
  Map<String, dynamic> toJson() => _$HomeQHomeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQArtBlock with EquatableMixin {
  HomeQArtBlock();

  factory HomeQArtBlock.fromJson(Map<String, dynamic> json) =>
      _$HomeQArtBlockFromJson(json);

  String title;

  List<HomeQArtItem> items;

  @override
  List<Object> get props => [title, items];
  Map<String, dynamic> toJson() => _$HomeQArtBlockToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQArtItem with EquatableMixin {
  HomeQArtItem();

  factory HomeQArtItem.fromJson(Map<String, dynamic> json) =>
      _$HomeQArtItemFromJson(json);

  String title;

  String url;

  String description;

  String attributionInstruction;

  String lowImageUrl;

  List<String> license;

  int favorites;

  List<HomeQPreviewImage> previewImages;

  HomeQUser author;

  List<HomeQComment> comments;

  List<HomeQTag> tags;

  List<HomeQCollection> collections;

  @override
  List<Object> get props => [
        title,
        url,
        description,
        attributionInstruction,
        lowImageUrl,
        license,
        favorites,
        previewImages,
        author,
        comments,
        tags,
        collections
      ];
  Map<String, dynamic> toJson() => _$HomeQArtItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQPreviewImage with EquatableMixin {
  HomeQPreviewImage();

  factory HomeQPreviewImage.fromJson(Map<String, dynamic> json) =>
      _$HomeQPreviewImageFromJson(json);

  String previewUrl;

  String fullUrl;

  bool isAudio;

  @override
  List<Object> get props => [previewUrl, fullUrl, isAudio];
  Map<String, dynamic> toJson() => _$HomeQPreviewImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQUser with EquatableMixin {
  HomeQUser();

  factory HomeQUser.fromJson(Map<String, dynamic> json) =>
      _$HomeQUserFromJson(json);

  String name;

  String thumbnailUrl;

  @override
  List<Object> get props => [name, thumbnailUrl];
  Map<String, dynamic> toJson() => _$HomeQUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQComment with EquatableMixin {
  HomeQComment();

  factory HomeQComment.fromJson(Map<String, dynamic> json) =>
      _$HomeQCommentFromJson(json);

  HomeQUser author;

  String userThumb;

  String postDate;

  String body;

  @override
  List<Object> get props => [author, userThumb, postDate, body];
  Map<String, dynamic> toJson() => _$HomeQCommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQTag with EquatableMixin {
  HomeQTag();

  factory HomeQTag.fromJson(Map<String, dynamic> json) =>
      _$HomeQTagFromJson(json);

  String tagId;

  String name;

  @override
  List<Object> get props => [tagId, name];
  Map<String, dynamic> toJson() => _$HomeQTagToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeQCollection with EquatableMixin {
  HomeQCollection();

  factory HomeQCollection.fromJson(Map<String, dynamic> json) =>
      _$HomeQCollectionFromJson(json);

  String name;

  String url;

  @override
  List<Object> get props => [name, url];
  Map<String, dynamic> toJson() => _$HomeQCollectionToJson(this);
}

class HomeQQuery extends GraphQLQuery<HomeQ, JsonSerializable> {
  HomeQQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'homeQ'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'page'),
              alias: NameNode(value: 'home'),
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'url'),
                    value: StringValueNode(
                        value: 'https://opengameart.org', isBlock: false))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'urlStr'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'artBlocks'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'items'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'title'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'url'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'description'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'attributionInstruction'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'lowImageUrl'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'license'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'favorites'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'previewImages'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'previewUrl'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'fullUrl'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'isAudio'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'author'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'name'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'thumbnailUrl'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'comments'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'author'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'name'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null),
                                        FieldNode(
                                            name: NameNode(value: 'url'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null)
                                      ])),
                                  FieldNode(
                                      name: NameNode(value: 'userThumb'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'postDate'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'body'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'tags'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'tagId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'name'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'collections'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'name'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'url'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ]))
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'homeQ';

  @override
  List<Object> get props => [document, operationName];
  @override
  HomeQ parse(Map<String, dynamic> json) => HomeQ.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ArtQ with EquatableMixin {
  ArtQ();

  factory ArtQ.fromJson(Map<String, dynamic> json) => _$ArtQFromJson(json);

  ArtQArtItem art;

  @override
  List<Object> get props => [art];
  Map<String, dynamic> toJson() => _$ArtQToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArtQArtItem with EquatableMixin {
  ArtQArtItem();

  factory ArtQArtItem.fromJson(Map<String, dynamic> json) =>
      _$ArtQArtItemFromJson(json);

  String title;

  String url;

  String description;

  String attributionInstruction;

  String lowImageUrl;

  List<ArtQPreviewImage> previewImages;

  List<ArtQTag> tags;

  List<ArtQCollection> collections;

  int favorites;

  List<ArtQComment> comments;

  @override
  List<Object> get props => [
        title,
        url,
        description,
        attributionInstruction,
        lowImageUrl,
        previewImages,
        tags,
        collections,
        favorites,
        comments
      ];
  Map<String, dynamic> toJson() => _$ArtQArtItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArtQPreviewImage with EquatableMixin {
  ArtQPreviewImage();

  factory ArtQPreviewImage.fromJson(Map<String, dynamic> json) =>
      _$ArtQPreviewImageFromJson(json);

  String previewUrl;

  String fullUrl;

  @override
  List<Object> get props => [previewUrl, fullUrl];
  Map<String, dynamic> toJson() => _$ArtQPreviewImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArtQTag with EquatableMixin {
  ArtQTag();

  factory ArtQTag.fromJson(Map<String, dynamic> json) =>
      _$ArtQTagFromJson(json);

  String name;

  String tagId;

  @override
  List<Object> get props => [name, tagId];
  Map<String, dynamic> toJson() => _$ArtQTagToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArtQCollection with EquatableMixin {
  ArtQCollection();

  factory ArtQCollection.fromJson(Map<String, dynamic> json) =>
      _$ArtQCollectionFromJson(json);

  String name;

  String url;

  @override
  List<Object> get props => [name, url];
  Map<String, dynamic> toJson() => _$ArtQCollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArtQComment with EquatableMixin {
  ArtQComment();

  factory ArtQComment.fromJson(Map<String, dynamic> json) =>
      _$ArtQCommentFromJson(json);

  ArtQUser author;

  String userThumb;

  String postDate;

  String body;

  @override
  List<Object> get props => [author, userThumb, postDate, body];
  Map<String, dynamic> toJson() => _$ArtQCommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArtQUser with EquatableMixin {
  ArtQUser();

  factory ArtQUser.fromJson(Map<String, dynamic> json) =>
      _$ArtQUserFromJson(json);

  String name;

  String url;

  @override
  List<Object> get props => [name, url];
  Map<String, dynamic> toJson() => _$ArtQUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArtQArguments extends JsonSerializable with EquatableMixin {
  ArtQArguments({this.url});

  factory ArtQArguments.fromJson(Map<String, dynamic> json) =>
      _$ArtQArgumentsFromJson(json);

  final String url;

  @override
  List<Object> get props => [url];
  Map<String, dynamic> toJson() => _$ArtQArgumentsToJson(this);
}

class ArtQQuery extends GraphQLQuery<ArtQ, ArtQArguments> {
  ArtQQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'artQ'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'url')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'art'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'url'),
                    value: VariableNode(name: NameNode(value: 'url')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'attributionInstruction'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'lowImageUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isAudio'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'previewImages'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'previewUrl'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'fullUrl'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'tags'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tagId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'collections'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'url'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'favorites'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'comments'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'author'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'url'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'userThumb'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'postDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'body'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'artQ';

  @override
  final ArtQArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ArtQ parse(Map<String, dynamic> json) => ArtQ.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PageQ with EquatableMixin {
  PageQ();

  factory PageQ.fromJson(Map<String, dynamic> json) => _$PageQFromJson(json);

  PageQPage page;

  @override
  List<Object> get props => [page];
  Map<String, dynamic> toJson() => _$PageQToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageQPage with EquatableMixin {
  PageQPage();

  factory PageQPage.fromJson(Map<String, dynamic> json) =>
      _$PageQPageFromJson(json);

  String title;

  String urlStr;

  List<PageQArtBlock> artBlocks;

  @override
  List<Object> get props => [title, urlStr, artBlocks];
  Map<String, dynamic> toJson() => _$PageQPageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageQArtBlock with EquatableMixin {
  PageQArtBlock();

  factory PageQArtBlock.fromJson(Map<String, dynamic> json) =>
      _$PageQArtBlockFromJson(json);

  String title;

  List<PageQArtItem> items;

  @override
  List<Object> get props => [title, items];
  Map<String, dynamic> toJson() => _$PageQArtBlockToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageQArtItem with EquatableMixin {
  PageQArtItem();

  factory PageQArtItem.fromJson(Map<String, dynamic> json) =>
      _$PageQArtItemFromJson(json);

  String title;

  String url;

  String description;

  String attributionInstruction;

  List<String> license;

  List<PageQPreviewImage> previewImages;

  PageQUser author;

  @override
  List<Object> get props => [
        title,
        url,
        description,
        attributionInstruction,
        license,
        previewImages,
        author
      ];
  Map<String, dynamic> toJson() => _$PageQArtItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageQPreviewImage with EquatableMixin {
  PageQPreviewImage();

  factory PageQPreviewImage.fromJson(Map<String, dynamic> json) =>
      _$PageQPreviewImageFromJson(json);

  String previewUrl;

  String fullUrl;

  @override
  List<Object> get props => [previewUrl, fullUrl];
  Map<String, dynamic> toJson() => _$PageQPreviewImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageQUser with EquatableMixin {
  PageQUser();

  factory PageQUser.fromJson(Map<String, dynamic> json) =>
      _$PageQUserFromJson(json);

  String name;

  String thumbnailUrl;

  @override
  List<Object> get props => [name, thumbnailUrl];
  Map<String, dynamic> toJson() => _$PageQUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageQArguments extends JsonSerializable with EquatableMixin {
  PageQArguments({this.url});

  factory PageQArguments.fromJson(Map<String, dynamic> json) =>
      _$PageQArgumentsFromJson(json);

  final String url;

  @override
  List<Object> get props => [url];
  Map<String, dynamic> toJson() => _$PageQArgumentsToJson(this);
}

class PageQQuery extends GraphQLQuery<PageQ, PageQArguments> {
  PageQQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'pageQ'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'url')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'page'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'url'),
                    value: VariableNode(name: NameNode(value: 'url')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'urlStr'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'artBlocks'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'items'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'title'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'url'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'description'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'attributionInstruction'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'license'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'previewImages'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'previewUrl'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'fullUrl'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: 'author'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'name'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'thumbnailUrl'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ]))
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'pageQ';

  @override
  final PageQArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PageQ parse(Map<String, dynamic> json) => PageQ.fromJson(json);
}
