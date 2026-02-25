-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('addlly_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('addlly_user_id', 'addlly_user_plan', 'faqSchema', 'article_id', 'user_id', 'topic', 'keyword', 'aiType', 'geoLocation', 'lang', 'generated_topic', 'meta_title', 'meta_dec', 'article_status', 'article_data', 'istrainArticle', 'citationContent', 'isArchivedArticle', 'isDeletedArticle', 'addlly_user_web_link', 'addlly_first_name', 'addlly_last_name', 'addlly_username', 'addlly_user_password', 'reviewArticleContent', 'longArticleContent', 'is_reviewed_article');
DELETE FROM wp_usermeta WHERE meta_key IN ('addlly_user_id', 'addlly_user_plan', 'faqSchema', 'article_id', 'user_id', 'topic', 'keyword', 'aiType', 'geoLocation', 'lang', 'generated_topic', 'meta_title', 'meta_dec', 'article_status', 'article_data', 'istrainArticle', 'citationContent', 'isArchivedArticle', 'isDeletedArticle', 'addlly_user_web_link', 'addlly_first_name', 'addlly_last_name', 'addlly_username', 'addlly_user_password', 'reviewArticleContent', 'longArticleContent', 'is_reviewed_article');
DELETE FROM wp_termmeta WHERE meta_key IN ('addlly_user_id', 'addlly_user_plan', 'faqSchema', 'article_id', 'user_id', 'topic', 'keyword', 'aiType', 'geoLocation', 'lang', 'generated_topic', 'meta_title', 'meta_dec', 'article_status', 'article_data', 'istrainArticle', 'citationContent', 'isArchivedArticle', 'isDeletedArticle', 'addlly_user_web_link', 'addlly_first_name', 'addlly_last_name', 'addlly_username', 'addlly_user_password', 'reviewArticleContent', 'longArticleContent', 'is_reviewed_article');
DELETE FROM wp_commentmeta WHERE meta_key IN ('addlly_user_id', 'addlly_user_plan', 'faqSchema', 'article_id', 'user_id', 'topic', 'keyword', 'aiType', 'geoLocation', 'lang', 'generated_topic', 'meta_title', 'meta_dec', 'article_status', 'article_data', 'istrainArticle', 'citationContent', 'isArchivedArticle', 'isDeletedArticle', 'addlly_user_web_link', 'addlly_first_name', 'addlly_last_name', 'addlly_username', 'addlly_user_password', 'reviewArticleContent', 'longArticleContent', 'is_reviewed_article');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%VersionHistory';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%VersionHistory';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%VersionHistory';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%VersionHistory';

