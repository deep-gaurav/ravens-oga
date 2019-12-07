// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphQLapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeQ _$HomeQFromJson(Map<String, dynamic> json) {
  return HomeQ()
    ..home = json['home'] == null
        ? null
        : HomeQHome.fromJson(json['home'] as Map<String, dynamic>);
}

Map<String, dynamic> _$HomeQToJson(HomeQ instance) => <String, dynamic>{
      'home': instance.home?.toJson(),
    };

HomeQHome _$HomeQHomeFromJson(Map<String, dynamic> json) {
  return HomeQHome()
    ..title = json['title'] as String
    ..urlStr = json['urlStr'] as String
    ..artBlocks = (json['artBlocks'] as List)
        ?.map((e) => e == null
            ? null
            : HomeQArtBlock.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HomeQHomeToJson(HomeQHome instance) => <String, dynamic>{
      'title': instance.title,
      'urlStr': instance.urlStr,
      'artBlocks': instance.artBlocks?.map((e) => e?.toJson())?.toList(),
    };

HomeQArtBlock _$HomeQArtBlockFromJson(Map<String, dynamic> json) {
  return HomeQArtBlock()
    ..title = json['title'] as String
    ..items = (json['items'] as List)
        ?.map((e) =>
            e == null ? null : HomeQArtItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HomeQArtBlockToJson(HomeQArtBlock instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

HomeQArtItem _$HomeQArtItemFromJson(Map<String, dynamic> json) {
  return HomeQArtItem()
    ..title = json['title'] as String
    ..url = json['url'] as String
    ..description = json['description'] as String
    ..attributionInstruction = json['attributionInstruction'] as String
    ..lowImageUrl = json['lowImageUrl'] as String
    ..license = (json['license'] as List)?.map((e) => e as String)?.toList()
    ..favorites = json['favorites'] as int
    ..previewImages = (json['previewImages'] as List)
        ?.map((e) => e == null
            ? null
            : HomeQPreviewImage.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..author = json['author'] == null
        ? null
        : HomeQUser.fromJson(json['author'] as Map<String, dynamic>)
    ..comments = (json['comments'] as List)
        ?.map((e) =>
            e == null ? null : HomeQComment.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..tags = (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : HomeQTag.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..collections = (json['collections'] as List)
        ?.map((e) => e == null
            ? null
            : HomeQCollection.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HomeQArtItemToJson(HomeQArtItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'attributionInstruction': instance.attributionInstruction,
      'lowImageUrl': instance.lowImageUrl,
      'license': instance.license,
      'favorites': instance.favorites,
      'previewImages':
          instance.previewImages?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.toJson(),
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
      'tags': instance.tags?.map((e) => e?.toJson())?.toList(),
      'collections': instance.collections?.map((e) => e?.toJson())?.toList(),
    };

HomeQPreviewImage _$HomeQPreviewImageFromJson(Map<String, dynamic> json) {
  return HomeQPreviewImage()
    ..previewUrl = json['previewUrl'] as String
    ..fullUrl = json['fullUrl'] as String
    ..isAudio = json['isAudio'] as bool;
}

Map<String, dynamic> _$HomeQPreviewImageToJson(HomeQPreviewImage instance) =>
    <String, dynamic>{
      'previewUrl': instance.previewUrl,
      'fullUrl': instance.fullUrl,
      'isAudio': instance.isAudio,
    };

HomeQUser _$HomeQUserFromJson(Map<String, dynamic> json) {
  return HomeQUser()
    ..name = json['name'] as String
    ..thumbnailUrl = json['thumbnailUrl'] as String;
}

Map<String, dynamic> _$HomeQUserToJson(HomeQUser instance) => <String, dynamic>{
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
    };

HomeQComment _$HomeQCommentFromJson(Map<String, dynamic> json) {
  return HomeQComment()
    ..author = json['author'] == null
        ? null
        : HomeQUser.fromJson(json['author'] as Map<String, dynamic>)
    ..userThumb = json['userThumb'] as String
    ..postDate = json['postDate'] as String
    ..body = json['body'] as String;
}

Map<String, dynamic> _$HomeQCommentToJson(HomeQComment instance) =>
    <String, dynamic>{
      'author': instance.author?.toJson(),
      'userThumb': instance.userThumb,
      'postDate': instance.postDate,
      'body': instance.body,
    };

HomeQTag _$HomeQTagFromJson(Map<String, dynamic> json) {
  return HomeQTag()
    ..tagId = json['tagId'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$HomeQTagToJson(HomeQTag instance) => <String, dynamic>{
      'tagId': instance.tagId,
      'name': instance.name,
    };

HomeQCollection _$HomeQCollectionFromJson(Map<String, dynamic> json) {
  return HomeQCollection()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$HomeQCollectionToJson(HomeQCollection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

ArtQ _$ArtQFromJson(Map<String, dynamic> json) {
  return ArtQ()
    ..art = json['art'] == null
        ? null
        : ArtQArtItem.fromJson(json['art'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ArtQToJson(ArtQ instance) => <String, dynamic>{
      'art': instance.art?.toJson(),
    };

ArtQArtItem _$ArtQArtItemFromJson(Map<String, dynamic> json) {
  return ArtQArtItem()
    ..title = json['title'] as String
    ..url = json['url'] as String
    ..description = json['description'] as String
    ..attributionInstruction = json['attributionInstruction'] as String
    ..lowImageUrl = json['lowImageUrl'] as String
    ..previewImages = (json['previewImages'] as List)
        ?.map((e) => e == null
            ? null
            : ArtQPreviewImage.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..tags = (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : ArtQTag.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..collections = (json['collections'] as List)
        ?.map((e) => e == null
            ? null
            : ArtQCollection.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..favorites = json['favorites'] as int
    ..comments = (json['comments'] as List)
        ?.map((e) =>
            e == null ? null : ArtQComment.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ArtQArtItemToJson(ArtQArtItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'attributionInstruction': instance.attributionInstruction,
      'lowImageUrl': instance.lowImageUrl,
      'previewImages':
          instance.previewImages?.map((e) => e?.toJson())?.toList(),
      'tags': instance.tags?.map((e) => e?.toJson())?.toList(),
      'collections': instance.collections?.map((e) => e?.toJson())?.toList(),
      'favorites': instance.favorites,
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
    };

ArtQPreviewImage _$ArtQPreviewImageFromJson(Map<String, dynamic> json) {
  return ArtQPreviewImage()
    ..previewUrl = json['previewUrl'] as String
    ..fullUrl = json['fullUrl'] as String;
}

Map<String, dynamic> _$ArtQPreviewImageToJson(ArtQPreviewImage instance) =>
    <String, dynamic>{
      'previewUrl': instance.previewUrl,
      'fullUrl': instance.fullUrl,
    };

ArtQTag _$ArtQTagFromJson(Map<String, dynamic> json) {
  return ArtQTag()
    ..name = json['name'] as String
    ..tagId = json['tagId'] as String;
}

Map<String, dynamic> _$ArtQTagToJson(ArtQTag instance) => <String, dynamic>{
      'name': instance.name,
      'tagId': instance.tagId,
    };

ArtQCollection _$ArtQCollectionFromJson(Map<String, dynamic> json) {
  return ArtQCollection()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$ArtQCollectionToJson(ArtQCollection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

ArtQComment _$ArtQCommentFromJson(Map<String, dynamic> json) {
  return ArtQComment()
    ..author = json['author'] == null
        ? null
        : ArtQUser.fromJson(json['author'] as Map<String, dynamic>)
    ..userThumb = json['userThumb'] as String
    ..postDate = json['postDate'] as String
    ..body = json['body'] as String;
}

Map<String, dynamic> _$ArtQCommentToJson(ArtQComment instance) =>
    <String, dynamic>{
      'author': instance.author?.toJson(),
      'userThumb': instance.userThumb,
      'postDate': instance.postDate,
      'body': instance.body,
    };

ArtQUser _$ArtQUserFromJson(Map<String, dynamic> json) {
  return ArtQUser()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$ArtQUserToJson(ArtQUser instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

ArtQArguments _$ArtQArgumentsFromJson(Map<String, dynamic> json) {
  return ArtQArguments(
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ArtQArgumentsToJson(ArtQArguments instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

PageQ _$PageQFromJson(Map<String, dynamic> json) {
  return PageQ()
    ..page = json['page'] == null
        ? null
        : PageQPage.fromJson(json['page'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PageQToJson(PageQ instance) => <String, dynamic>{
      'page': instance.page?.toJson(),
    };

PageQPage _$PageQPageFromJson(Map<String, dynamic> json) {
  return PageQPage()
    ..title = json['title'] as String
    ..urlStr = json['urlStr'] as String
    ..artBlocks = (json['artBlocks'] as List)
        ?.map((e) => e == null
            ? null
            : PageQArtBlock.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PageQPageToJson(PageQPage instance) => <String, dynamic>{
      'title': instance.title,
      'urlStr': instance.urlStr,
      'artBlocks': instance.artBlocks?.map((e) => e?.toJson())?.toList(),
    };

PageQArtBlock _$PageQArtBlockFromJson(Map<String, dynamic> json) {
  return PageQArtBlock()
    ..title = json['title'] as String
    ..items = (json['items'] as List)
        ?.map((e) =>
            e == null ? null : PageQArtItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PageQArtBlockToJson(PageQArtBlock instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

PageQArtItem _$PageQArtItemFromJson(Map<String, dynamic> json) {
  return PageQArtItem()
    ..title = json['title'] as String
    ..url = json['url'] as String
    ..description = json['description'] as String
    ..attributionInstruction = json['attributionInstruction'] as String
    ..license = (json['license'] as List)?.map((e) => e as String)?.toList()
    ..previewImages = (json['previewImages'] as List)
        ?.map((e) => e == null
            ? null
            : PageQPreviewImage.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..author = json['author'] == null
        ? null
        : PageQUser.fromJson(json['author'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PageQArtItemToJson(PageQArtItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'attributionInstruction': instance.attributionInstruction,
      'license': instance.license,
      'previewImages':
          instance.previewImages?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.toJson(),
    };

PageQPreviewImage _$PageQPreviewImageFromJson(Map<String, dynamic> json) {
  return PageQPreviewImage()
    ..previewUrl = json['previewUrl'] as String
    ..fullUrl = json['fullUrl'] as String;
}

Map<String, dynamic> _$PageQPreviewImageToJson(PageQPreviewImage instance) =>
    <String, dynamic>{
      'previewUrl': instance.previewUrl,
      'fullUrl': instance.fullUrl,
    };

PageQUser _$PageQUserFromJson(Map<String, dynamic> json) {
  return PageQUser()
    ..name = json['name'] as String
    ..thumbnailUrl = json['thumbnailUrl'] as String;
}

Map<String, dynamic> _$PageQUserToJson(PageQUser instance) => <String, dynamic>{
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
    };

PageQArguments _$PageQArgumentsFromJson(Map<String, dynamic> json) {
  return PageQArguments(
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$PageQArgumentsToJson(PageQArguments instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
