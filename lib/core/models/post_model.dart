/*
Author: Harun Demir
Date: 25.07.2023
*/

class Post {
  String kind;
  Data data;

  Post({
    required this.kind,
    required this.data,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        kind: json["kind"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
      };
}

class Data {
  dynamic approvedAtUtc;
  String subreddit;
  String selftext;
  String authorFullname;
  bool saved;
  dynamic modReasonTitle;
  int gilded;
  bool clicked;
  String title;
  List<dynamic> linkFlairRichtext;
  String subredditNamePrefixed;
  bool hidden;
  int pwls;
  String linkFlairCssClass;
  int downs;
  dynamic thumbnailHeight;
  dynamic topAwardedType;
  bool hideScore;
  String name;
  bool quarantine;
  String linkFlairTextColor;
  double upvoteRatio;
  String authorFlairBackgroundColor;
  String subredditType;
  int ups;
  int totalAwardsReceived;
  Gildings mediaEmbed;
  dynamic thumbnailWidth;
  dynamic authorFlairTemplateId;
  bool isOriginalContent;
  List<dynamic> userReports;
  dynamic secureMedia;
  bool isRedditMediaDomain;
  bool isMeta;
  dynamic category;
  Gildings secureMediaEmbed;
  String linkFlairText;
  bool canModPost;
  int score;
  dynamic approvedBy;
  bool isCreatedFromAdsUi;
  bool authorPremium;
  String thumbnail;
  bool edited;
  String authorFlairCssClass;
  List<dynamic> authorFlairRichtext;
  Gildings gildings;
  dynamic contentCategories;
  bool isSelf;
  dynamic modNote;
  Created created;
  String linkFlairType;
  int wls;
  dynamic removedByCategory;
  dynamic bannedBy;
  String authorFlairType;
  String domain;
  bool allowLiveComments;
  String selftextHtml;
  dynamic likes;
  dynamic suggestedSort;
  dynamic bannedAtUtc;
  dynamic viewCount;
  bool archived;
  bool noFollow;
  bool isCrosspostable;
  bool pinned;
  bool over18;
  List<dynamic> allAwardings;
  List<dynamic> awarders;
  bool mediaOnly;
  String linkFlairTemplateId;
  bool canGild;
  bool spoiler;
  bool locked;
  String authorFlairText;
  List<dynamic> treatmentTags;
  bool visited;
  dynamic removedBy;
  dynamic numReports;
  dynamic distinguished;
  String subredditId;
  bool authorIsBlocked;
  dynamic modReasonBy;
  dynamic removalReason;
  String linkFlairBackgroundColor;
  String id;
  bool isRobotIndexable;
  dynamic reportReasons;
  String author;
  dynamic discussionType;
  int numComments;
  bool sendReplies;
  String whitelistStatus;
  bool contestMode;
  List<dynamic> modReports;
  bool authorPatreonFlair;
  String authorFlairTextColor;
  String permalink;
  String parentWhitelistStatus;
  bool stickied;
  String url;
  int subredditSubscribers;
  Created createdUtc;
  int numCrossposts;
  dynamic media;
  bool isVideo;

  Data({
    this.approvedAtUtc,
    required this.subreddit,
    required this.selftext,
    required this.authorFullname,
    required this.saved,
    this.modReasonTitle,
    required this.gilded,
    required this.clicked,
    required this.title,
    required this.linkFlairRichtext,
    required this.subredditNamePrefixed,
    required this.hidden,
    required this.pwls,
    required this.linkFlairCssClass,
    required this.downs,
    this.thumbnailHeight,
    this.topAwardedType,
    required this.hideScore,
    required this.name,
    required this.quarantine,
    required this.linkFlairTextColor,
    required this.upvoteRatio,
    required this.authorFlairBackgroundColor,
    required this.subredditType,
    required this.ups,
    required this.totalAwardsReceived,
    required this.mediaEmbed,
    this.thumbnailWidth,
    this.authorFlairTemplateId,
    required this.isOriginalContent,
    required this.userReports,
    this.secureMedia,
    required this.isRedditMediaDomain,
    required this.isMeta,
    this.category,
    required this.secureMediaEmbed,
    required this.linkFlairText,
    required this.canModPost,
    required this.score,
    this.approvedBy,
    required this.isCreatedFromAdsUi,
    required this.authorPremium,
    required this.thumbnail,
    required this.edited,
    required this.authorFlairCssClass,
    required this.authorFlairRichtext,
    required this.gildings,
    this.contentCategories,
    required this.isSelf,
    this.modNote,
    required this.created,
    required this.linkFlairType,
    required this.wls,
    this.removedByCategory,
    this.bannedBy,
    required this.authorFlairType,
    required this.domain,
    required this.allowLiveComments,
    required this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.viewCount,
    required this.archived,
    required this.noFollow,
    required this.isCrosspostable,
    required this.pinned,
    required this.over18,
    required this.allAwardings,
    required this.awarders,
    required this.mediaOnly,
    required this.linkFlairTemplateId,
    required this.canGild,
    required this.spoiler,
    required this.locked,
    required this.authorFlairText,
    required this.treatmentTags,
    required this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    required this.subredditId,
    required this.authorIsBlocked,
    this.modReasonBy,
    this.removalReason,
    required this.linkFlairBackgroundColor,
    required this.id,
    required this.isRobotIndexable,
    this.reportReasons,
    required this.author,
    this.discussionType,
    required this.numComments,
    required this.sendReplies,
    required this.whitelistStatus,
    required this.contestMode,
    required this.modReports,
    required this.authorPatreonFlair,
    required this.authorFlairTextColor,
    required this.permalink,
    required this.parentWhitelistStatus,
    required this.stickied,
    required this.url,
    required this.subredditSubscribers,
    required this.createdUtc,
    required this.numCrossposts,
    this.media,
    required this.isVideo,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: json["subreddit"],
        selftext: json["selftext"],
        authorFullname: json["author_fullname"],
        saved: json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        clicked: json["clicked"],
        title: json["title"],
        linkFlairRichtext:
            List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
        subredditNamePrefixed: json["subreddit_name_prefixed"],
        hidden: json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"],
        downs: json["downs"],
        thumbnailHeight: json["thumbnail_height"],
        topAwardedType: json["top_awarded_type"],
        hideScore: json["hide_score"],
        name: json["name"],
        quarantine: json["quarantine"],
        linkFlairTextColor: json["link_flair_text_color"],
        upvoteRatio: json["upvote_ratio"]?.toDouble(),
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType: json["subreddit_type"],
        ups: json["ups"],
        totalAwardsReceived: json["total_awards_received"],
        mediaEmbed: Gildings.fromJson(json["media_embed"]),
        thumbnailWidth: json["thumbnail_width"],
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        secureMedia: json["secure_media"],
        isRedditMediaDomain: json["is_reddit_media_domain"],
        isMeta: json["is_meta"],
        category: json["category"],
        secureMediaEmbed: Gildings.fromJson(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"],
        canModPost: json["can_mod_post"],
        score: json["score"],
        approvedBy: json["approved_by"],
        isCreatedFromAdsUi: json["is_created_from_ads_ui"],
        authorPremium: json["author_premium"],
        thumbnail: json["thumbnail"],
        edited: json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext:
            List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        gildings: Gildings.fromJson(json["gildings"]),
        contentCategories: json["content_categories"],
        isSelf: json["is_self"],
        modNote: json["mod_note"],
        created: Created.fromJson(json["created"]),
        linkFlairType: json["link_flair_type"],
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: json["author_flair_type"],
        domain: json["domain"],
        allowLiveComments: json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        viewCount: json["view_count"],
        archived: json["archived"],
        noFollow: json["no_follow"],
        isCrosspostable: json["is_crosspostable"],
        pinned: json["pinned"],
        over18: json["over_18"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        mediaOnly: json["media_only"],
        linkFlairTemplateId: json["link_flair_template_id"],
        canGild: json["can_gild"],
        spoiler: json["spoiler"],
        locked: json["locked"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        visited: json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: json["subreddit_id"],
        authorIsBlocked: json["author_is_blocked"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: json["link_flair_background_color"],
        id: json["id"],
        isRobotIndexable: json["is_robot_indexable"],
        reportReasons: json["report_reasons"],
        author: json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"],
        sendReplies: json["send_replies"],
        whitelistStatus: json["whitelist_status"],
        contestMode: json["contest_mode"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"],
        permalink: json["permalink"],
        parentWhitelistStatus: json["parent_whitelist_status"],
        stickied: json["stickied"],
        url: json["url"],
        subredditSubscribers: json["subreddit_subscribers"],
        createdUtc: Created.fromJson(json["created_utc"]),
        numCrossposts: json["num_crossposts"],
        media: json["media"],
        isVideo: json["is_video"],
      );

  Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subreddit,
        "selftext": selftext,
        "author_fullname": authorFullname,
        "saved": saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "clicked": clicked,
        "title": title,
        "link_flair_richtext":
            List<dynamic>.from(linkFlairRichtext.map((x) => x)),
        "subreddit_name_prefixed": subredditNamePrefixed,
        "hidden": hidden,
        "pwls": pwls,
        "link_flair_css_class": linkFlairCssClass,
        "downs": downs,
        "thumbnail_height": thumbnailHeight,
        "top_awarded_type": topAwardedType,
        "hide_score": hideScore,
        "name": name,
        "quarantine": quarantine,
        "link_flair_text_color": linkFlairTextColor,
        "upvote_ratio": upvoteRatio,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditType,
        "ups": ups,
        "total_awards_received": totalAwardsReceived,
        "media_embed": mediaEmbed.toJson(),
        "thumbnail_width": thumbnailWidth,
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "secure_media": secureMedia,
        "is_reddit_media_domain": isRedditMediaDomain,
        "is_meta": isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed.toJson(),
        "link_flair_text": linkFlairText,
        "can_mod_post": canModPost,
        "score": score,
        "approved_by": approvedBy,
        "is_created_from_ads_ui": isCreatedFromAdsUi,
        "author_premium": authorPremium,
        "thumbnail": thumbnail,
        "edited": edited,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext":
            List<dynamic>.from(authorFlairRichtext.map((x) => x)),
        "gildings": gildings.toJson(),
        "content_categories": contentCategories,
        "is_self": isSelf,
        "mod_note": modNote,
        "created": created.toJson(),
        "link_flair_type": linkFlairType,
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairType,
        "domain": domain,
        "allow_live_comments": allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "view_count": viewCount,
        "archived": archived,
        "no_follow": noFollow,
        "is_crosspostable": isCrosspostable,
        "pinned": pinned,
        "over_18": over18,
        "all_awardings": List<dynamic>.from(allAwardings.map((x) => x)),
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "media_only": mediaOnly,
        "link_flair_template_id": linkFlairTemplateId,
        "can_gild": canGild,
        "spoiler": spoiler,
        "locked": locked,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "visited": visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditId,
        "author_is_blocked": authorIsBlocked,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color": linkFlairBackgroundColor,
        "id": id,
        "is_robot_indexable": isRobotIndexable,
        "report_reasons": reportReasons,
        "author": author,
        "discussion_type": discussionType,
        "num_comments": numComments,
        "send_replies": sendReplies,
        "whitelist_status": whitelistStatus,
        "contest_mode": contestMode,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor,
        "permalink": permalink,
        "parent_whitelist_status": parentWhitelistStatus,
        "stickied": stickied,
        "url": url,
        "subreddit_subscribers": subredditSubscribers,
        "created_utc": createdUtc.toJson(),
        "num_crossposts": numCrossposts,
        "media": media,
        "is_video": isVideo,
      };
}

class Created {
  String value;
  String type;

  Created({
    required this.value,
    required this.type,
  });

  factory Created.fromJson(Map<String, dynamic> json) => Created(
        value: json["value"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "type": type,
      };
}

class Gildings {
  Gildings();

  factory Gildings.fromJson(Map<String, dynamic> json) => Gildings();

  Map<String, dynamic> toJson() => {};
}
