class object_base_json {
  bool? _success;
  String? _message;
  List<Data>? _data;

  object_base_json({bool? success, String? message, List<Data>? data}) {
    if (success != null) {
      this._success = success;
    }
    if (message != null) {
      this._message = message;
    }
    if (data != null) {
      this._data = data;
    }
  }

  bool? get success => _success;
  set success(bool? success) => _success = success;
  String? get message => _message;
  set message(String? message) => _message = message;
  List<Data>? get data => _data;
  set data(List<Data>? data) => _data = data;

  object_base_json.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this._success;
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? _sId;
  bool? _onSale;
  int? _salePercent;
  int? _sold;
  bool? _sliderNew;
  bool? _sliderRecent;
  bool? _sliderSold;
  String? _date;
  String? _title;
  Categories? _categories;
  Subcat? _subcat;
  Shop? _shop;
  String? _price;
  String? _saleTitle;
  String? _salePrice;
  String? _description;
  String? _color;
  String? _size;
  bool? _inWishlist;
  List<Images>? _images;

  Data(
      {String? sId,
      bool? onSale,
      int? salePercent,
      int? sold,
      bool? sliderNew,
      bool? sliderRecent,
      bool? sliderSold,
      String? date,
      String? title,
      Categories? categories,
      Subcat? subcat,
      Shop? shop,
      String? price,
      String? saleTitle,
      String? salePrice,
      String? description,
      String? color,
      String? size,
      bool? inWishlist,
      List<Images>? images}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (onSale != null) {
      this._onSale = onSale;
    }
    if (salePercent != null) {
      this._salePercent = salePercent;
    }
    if (sold != null) {
      this._sold = sold;
    }
    if (sliderNew != null) {
      this._sliderNew = sliderNew;
    }
    if (sliderRecent != null) {
      this._sliderRecent = sliderRecent;
    }
    if (sliderSold != null) {
      this._sliderSold = sliderSold;
    }
    if (date != null) {
      this._date = date;
    }
    if (title != null) {
      this._title = title;
    }
    if (categories != null) {
      this._categories = categories;
    }
    if (subcat != null) {
      this._subcat = subcat;
    }
    if (shop != null) {
      this._shop = shop;
    }
    if (price != null) {
      this._price = price;
    }
    if (saleTitle != null) {
      this._saleTitle = saleTitle;
    }
    if (salePrice != null) {
      this._salePrice = salePrice;
    }
    if (description != null) {
      this._description = description;
    }
    if (color != null) {
      this._color = color;
    }
    if (size != null) {
      this._size = size;
    }
    if (inWishlist != null) {
      this._inWishlist = inWishlist;
    }
    if (images != null) {
      this._images = images;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  bool? get onSale => _onSale;
  set onSale(bool? onSale) => _onSale = onSale;
  int? get salePercent => _salePercent;
  set salePercent(int? salePercent) => _salePercent = salePercent;
  int? get sold => _sold;
  set sold(int? sold) => _sold = sold;
  bool? get sliderNew => _sliderNew;
  set sliderNew(bool? sliderNew) => _sliderNew = sliderNew;
  bool? get sliderRecent => _sliderRecent;
  set sliderRecent(bool? sliderRecent) => _sliderRecent = sliderRecent;
  bool? get sliderSold => _sliderSold;
  set sliderSold(bool? sliderSold) => _sliderSold = sliderSold;
  String? get date => _date;
  set date(String? date) => _date = date;
  String? get title => _title;
  set title(String? title) => _title = title;
  Categories? get categories => _categories;
  set categories(Categories? categories) => _categories = categories;
  Subcat? get subcat => _subcat;
  set subcat(Subcat? subcat) => _subcat = subcat;
  Shop? get shop => _shop;
  set shop(Shop? shop) => _shop = shop;
  String? get price => _price;
  set price(String? price) => _price = price;
  String? get saleTitle => _saleTitle;
  set saleTitle(String? saleTitle) => _saleTitle = saleTitle;
  String? get salePrice => _salePrice;
  set salePrice(String? salePrice) => _salePrice = salePrice;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get color => _color;
  set color(String? color) => _color = color;
  String? get size => _size;
  set size(String? size) => _size = size;
  bool? get inWishlist => _inWishlist;
  set inWishlist(bool? inWishlist) => _inWishlist = inWishlist;
  List<Images>? get images => _images;
  set images(List<Images>? images) => _images = images;

  Data.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _onSale = json['on_sale'];
    _salePercent = json['sale_percent'];
    _sold = json['sold'];
    _sliderNew = json['slider_new'];
    _sliderRecent = json['slider_recent'];
    _sliderSold = json['slider_sold'];
    _date = json['date'];
    _title = json['title'];
    _categories = json['categories'] != null
        ? new Categories.fromJson(json['categories'])
        : null;
    _subcat =
        json['subcat'] != null ? new Subcat.fromJson(json['subcat']) : null;
    _shop = json['shop'] != null ? new Shop.fromJson(json['shop']) : null;
    _price = json['price'];
    _saleTitle = json['sale_title'];
    _salePrice = json['sale_price'];
    _description = json['description'];
    _color = json['color'];
    _size = json['size'];
    _inWishlist = json['in_wishlist'];
    if (json['images'] != null) {
      _images = <Images>[];
      json['images'].forEach((v) {
        _images!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['on_sale'] = this._onSale;
    data['sale_percent'] = this._salePercent;
    data['sold'] = this._sold;
    data['slider_new'] = this._sliderNew;
    data['slider_recent'] = this._sliderRecent;
    data['slider_sold'] = this._sliderSold;
    data['date'] = this._date;
    data['title'] = this._title;
    if (this._categories != null) {
      data['categories'] = this._categories!.toJson();
    }
    if (this._subcat != null) {
      data['subcat'] = this._subcat!.toJson();
    }
    if (this._shop != null) {
      data['shop'] = this._shop!.toJson();
    }
    data['price'] = this._price;
    data['sale_title'] = this._saleTitle;
    data['sale_price'] = this._salePrice;
    data['description'] = this._description;
    data['color'] = this._color;
    data['size'] = this._size;
    data['in_wishlist'] = this._inWishlist;
    if (this._images != null) {
      data['images'] = this._images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? _sId;
  String? _type;
  int? _salePercent;
  String? _date;
  String? _name;
  String? _image;

  Categories(
      {String? sId,
      String? type,
      int? salePercent,
      String? date,
      String? name,
      String? image}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (type != null) {
      this._type = type;
    }
    if (salePercent != null) {
      this._salePercent = salePercent;
    }
    if (date != null) {
      this._date = date;
    }
    if (name != null) {
      this._name = name;
    }
    if (image != null) {
      this._image = image;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get type => _type;
  set type(String? type) => _type = type;
  int? get salePercent => _salePercent;
  set salePercent(int? salePercent) => _salePercent = salePercent;
  String? get date => _date;
  set date(String? date) => _date = date;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get image => _image;
  set image(String? image) => _image = image;

  Categories.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _type = json['type'];
    _salePercent = json['sale_percent'];
    _date = json['date'];
    _name = json['name'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['type'] = this._type;
    data['sale_percent'] = this._salePercent;
    data['date'] = this._date;
    data['name'] = this._name;
    data['image'] = this._image;
    return data;
  }
}

class Subcat {
  String? _sId;
  String? _type;
  int? _salePercent;
  String? _date;
  String? _name;

  Subcat(
      {String? sId,
      String? type,
      int? salePercent,
      String? date,
      String? name}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (type != null) {
      this._type = type;
    }
    if (salePercent != null) {
      this._salePercent = salePercent;
    }
    if (date != null) {
      this._date = date;
    }
    if (name != null) {
      this._name = name;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get type => _type;
  set type(String? type) => _type = type;
  int? get salePercent => _salePercent;
  set salePercent(int? salePercent) => _salePercent = salePercent;
  String? get date => _date;
  set date(String? date) => _date = date;
  String? get name => _name;
  set name(String? name) => _name = name;

  Subcat.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _type = json['type'];
    _salePercent = json['sale_percent'];
    _date = json['date'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['type'] = this._type;
    data['sale_percent'] = this._salePercent;
    data['date'] = this._date;
    data['name'] = this._name;
    return data;
  }
}

class Shop {
  String? _sId;
  bool? _isActive;
  String? _createdAt;
  String? _name;
  String? _description;
  String? _shopemail;
  String? _shopaddress;
  String? _shopcity;
  String? _userid;
  String? _image;

  Shop(
      {String? sId,
      bool? isActive,
      String? createdAt,
      String? name,
      String? description,
      String? shopemail,
      String? shopaddress,
      String? shopcity,
      String? userid,
      String? image}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (isActive != null) {
      this._isActive = isActive;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (name != null) {
      this._name = name;
    }
    if (description != null) {
      this._description = description;
    }
    if (shopemail != null) {
      this._shopemail = shopemail;
    }
    if (shopaddress != null) {
      this._shopaddress = shopaddress;
    }
    if (shopcity != null) {
      this._shopcity = shopcity;
    }
    if (userid != null) {
      this._userid = userid;
    }
    if (image != null) {
      this._image = image;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  bool? get isActive => _isActive;
  set isActive(bool? isActive) => _isActive = isActive;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get shopemail => _shopemail;
  set shopemail(String? shopemail) => _shopemail = shopemail;
  String? get shopaddress => _shopaddress;
  set shopaddress(String? shopaddress) => _shopaddress = shopaddress;
  String? get shopcity => _shopcity;
  set shopcity(String? shopcity) => _shopcity = shopcity;
  String? get userid => _userid;
  set userid(String? userid) => _userid = userid;
  String? get image => _image;
  set image(String? image) => _image = image;

  Shop.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _isActive = json['is_active'];
    _createdAt = json['created_At'];
    _name = json['name'];
    _description = json['description'];
    _shopemail = json['shopemail'];
    _shopaddress = json['shopaddress'];
    _shopcity = json['shopcity'];
    _userid = json['userid'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['is_active'] = this._isActive;
    data['created_At'] = this._createdAt;
    data['name'] = this._name;
    data['description'] = this._description;
    data['shopemail'] = this._shopemail;
    data['shopaddress'] = this._shopaddress;
    data['shopcity'] = this._shopcity;
    data['userid'] = this._userid;
    data['image'] = this._image;
    return data;
  }
}

class Images {
  String? _id;
  String? _url;

  Images({String? id, String? url}) {
    if (id != null) {
      this._id = id;
    }
    if (url != null) {
      this._url = url;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get url => _url;
  set url(String? url) => _url = url;

  Images.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['url'] = this._url;
    return data;
  }
}
