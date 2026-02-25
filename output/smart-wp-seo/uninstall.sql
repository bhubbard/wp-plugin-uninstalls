-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qHomepage', 'qPosts', 'qPages', 'qTags', 'qzip', 'qgoogle', 'qask', 'qbing', 'qyandex', 'sws_images_alt', 'sws_images_title', 'sws_images_override', 'sws_images_override_title', 'sws_images_notice', 'qCategories', 'qArchives', 'qAuthor', 'smt_google_publisher_page', 'smt_google_varification', 'smt_bing_webmaster', 'smt_alexa_varification', 'smt_yandex_webmaster', 'smt_pinterest_webmaster', 'smt_facebookpage_url', 'smt_twitter_username');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sws_post_title', 'sws_post_description', 'sws_post_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('sws_post_title', 'sws_post_description', 'sws_post_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('sws_post_title', 'sws_post_description', 'sws_post_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sws_post_title', 'sws_post_description', 'sws_post_keywords');

