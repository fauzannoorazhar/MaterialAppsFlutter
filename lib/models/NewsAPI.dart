class NewsAPI {
    String title;
    String description;

    NewsAPI({
        this.title,
        this.description,
    });

    factory NewsAPI.fromJson(Map<String, dynamic> json) {
        return NewsAPI(
            title: json['title'],
            description: json['description'],
        );
    }
}