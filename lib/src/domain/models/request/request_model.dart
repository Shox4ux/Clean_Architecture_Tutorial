class RequestModel {
  final String query;
  final int page, perPage;

  RequestModel({
    required this.query,
    required this.page,
    required this.perPage,
  });

  Map<String, dynamic> toJson(bool isItSearch) {
    return isItSearch ? _forSearch() : _forCurated();
  }

  Map<String, dynamic> _forSearch() {
    return {"query": query, "page": page, "per_page": perPage};
  }

  Map<String, dynamic> _forCurated() {
    return {"page": page, "per_page": perPage};
  }
}
