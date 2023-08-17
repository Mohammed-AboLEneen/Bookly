import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "BOyCSAAACAAJ"
/// etag : "pTxc52Jt0T0"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/BOyCSAAACAAJ"
/// volumeInfo : {"title":"Python Programming","subtitle":"An Introduction to Computer Science","authors":["John M. Zelle"],"publisher":"Franklin, Beedle & Associates, Incorporated","publishedDate":"2010","description":"\"Introduces computer programming using the Python programming language\"--Provided by publisher.","industryIdentifiers":[{"type":"ISBN_10","identifier":"1590282418"},{"type":"ISBN_13","identifier":"9781590282410"}],"readingModes":{"text":false,"image":false},"pageCount":0,"printType":"BOOK","categories":["Programming languages (Electronic computers)"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"preview-1.0.0","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=BOyCSAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=BOyCSAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=BOyCSAAACAAJ&dq=computer+science&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com/books?id=BOyCSAAACAAJ&dq=computer+science&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Python_Programming.html?hl=&id=BOyCSAAACAAJ"}
/// saleInfo : {"country":"US","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"US","viewability":"NO_PAGES","embeddable":false,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=BOyCSAAACAAJ&hl=&source=gbs_api","accessViewStatus":"NONE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"&quot;Introduces computer programming using the Python programming language&quot;--Provided by publisher."}

class BookModel {
  BookModel({
      String? kind, 
      String? id, 
      String? etag, 
      String? selfLink, 
      VolumeInfo? volumeInfo, 
      SaleInfo? saleInfo, 
      AccessInfo? accessInfo, 
      SearchInfo? searchInfo,}){
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
}

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    _saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    _searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;
BookModel copyWith({  String? kind,
  String? id,
  String? etag,
  String? selfLink,
  VolumeInfo? volumeInfo,
  SaleInfo? saleInfo,
  AccessInfo? accessInfo,
  SearchInfo? searchInfo,
}) => BookModel(  kind: kind ?? _kind,
  id: id ?? _id,
  etag: etag ?? _etag,
  selfLink: selfLink ?? _selfLink,
  volumeInfo: volumeInfo ?? _volumeInfo,
  saleInfo: saleInfo ?? _saleInfo,
  accessInfo: accessInfo ?? _accessInfo,
  searchInfo: searchInfo ?? _searchInfo,
);
  String? get kind => _kind;
  String? get id => _id;
  String? get etag => _etag;
  String? get selfLink => _selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }

}