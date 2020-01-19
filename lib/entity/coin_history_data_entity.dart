class CoinHistoryData {
	int code;
	String message;
	FlutterData data;

	CoinHistoryData({this.code, this.message, this.data});

	CoinHistoryData.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		message = json['message'];
		data = json['data'] != null ? new FlutterData.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		data['message'] = this.message;
		if (this.data != null) {
			data['data'] = this.data.toJson();
		}
		return data;
	}
}

class FlutterData {
	List<Coupons> coupons;
	List<Products> products;
	Pagination pagination;

	FlutterData({this.coupons, this.products, this.pagination});

	FlutterData.fromJson(Map<String, dynamic> json) {
		if (json['coupons'] != null) {
			coupons = new List<Coupons>();
			json['coupons'].forEach((v) {
				coupons.add(new Coupons.fromJson(v));
			});
		}
		if (json['products'] != null) {
			products = new List<Products>();
			json['products'].forEach((v) {
				products.add(new Products.fromJson(v));
			});
		}
		pagination = json['pagination'] != null
				? new Pagination.fromJson(json['pagination'])
				: null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.coupons != null) {
			data['coupons'] = this.coupons.map((v) => v.toJson()).toList();
		}
		if (this.products != null) {
			data['products'] = this.products.map((v) => v.toJson()).toList();
		}
		if (this.pagination != null) {
			data['pagination'] = this.pagination.toJson();
		}
		return data;
	}
}

class Coupons {
	int id;
	String title;
	String code;
	String slogan;
	String platform;
	int couponType;
	String platformImage;
	String couponAmount;
	String timeRange;
	int received;
	String reason;
	int involveType;
	int involveCnt;
	int receiveRate;
	List<Involves> involves;

	Coupons(
			{this.id,
				this.title,
				this.code,
				this.slogan,
				this.platform,
				this.couponType,
				this.platformImage,
				this.couponAmount,
				this.timeRange,
				this.received,
				this.reason,
				this.involveType,
				this.involveCnt,
				this.receiveRate,
				this.involves});

	Coupons.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		title = json['title'];
		code = json['code'];
		slogan = json['slogan'];
		platform = json['platform'];
		couponType = json['coupon_type'];
		platformImage = json['platform_image'];
		couponAmount = json['coupon_amount'];
		timeRange = json['time_range'];
		received = json['received'];
		reason = json['reason'];
		involveType = json['involve_type'];
		involveCnt = json['involve_cnt'];
		receiveRate = json['receive_rate'];
		if (json['involves'] != null) {
			involves = new List<Involves>();
			json['involves'].forEach((v) {
				involves.add(new Involves.fromJson(v));
			});
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['title'] = this.title;
		data['code'] = this.code;
		data['slogan'] = this.slogan;
		data['platform'] = this.platform;
		data['coupon_type'] = this.couponType;
		data['platform_image'] = this.platformImage;
		data['coupon_amount'] = this.couponAmount;
		data['time_range'] = this.timeRange;
		data['received'] = this.received;
		data['reason'] = this.reason;
		data['involve_type'] = this.involveType;
		data['involve_cnt'] = this.involveCnt;
		data['receive_rate'] = this.receiveRate;
		if (this.involves != null) {
			data['involves'] = this.involves.map((v) => v.toJson()).toList();
		}
		return data;
	}
}

class Involves {
	int id;
	int valueId;
	String image;
	String title;
	String sku;
	String price;
	String marketPrice;

	Involves(
			{this.id,
				this.valueId,
				this.image,
				this.title,
				this.sku,
				this.price,
				this.marketPrice});

	Involves.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		valueId = json['value_id'];
		image = json['image'];
		title = json['title'];
		sku = json['sku'];
		price = json['price'];
		marketPrice = json['market_price'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['value_id'] = this.valueId;
		data['image'] = this.image;
		data['title'] = this.title;
		data['sku'] = this.sku;
		data['price'] = this.price;
		data['market_price'] = this.marketPrice;
		return data;
	}
}

class Products {
	int id;
	String title;
	String image;
	String price;
	String marketPrice;
	String sku;

	Products(
			{this.id,
				this.title,
				this.image,
				this.price,
				this.marketPrice,
				this.sku});

	Products.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		title = json['title'];
		image = json['image'];
		price = json['price'];
		marketPrice = json['market_price'];
		sku = json['sku'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['title'] = this.title;
		data['image'] = this.image;
		data['price'] = this.price;
		data['market_price'] = this.marketPrice;
		data['sku'] = this.sku;
		return data;
	}
}

class Pagination {
	int total;
	int current;
	int pageSize;
	bool hasNextPage;

	Pagination({this.total, this.current, this.pageSize, this.hasNextPage});

	Pagination.fromJson(Map<String, dynamic> json) {
		total = json['total'];
		current = json['current'];
		pageSize = json['pageSize'];
		hasNextPage = json['hasNextPage'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total'] = this.total;
		data['current'] = this.current;
		data['pageSize'] = this.pageSize;
		data['hasNextPage'] = this.hasNextPage;
		return data;
	}
}