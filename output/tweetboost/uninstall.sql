-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_version', 'acf_update_550_termmeta', 'tweet-boost-tweet-status-log', 'tweet-boost', 'tweet-boost-notice', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'tweet_time', 'tweet_boost_status_data', 'tweet_boost_post_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'tweet_time', 'tweet_boost_status_data', 'tweet_boost_post_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'tweet_time', 'tweet_boost_status_data', 'tweet_boost_post_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'tweet_time', 'tweet_boost_status_data', 'tweet_boost_post_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%tweet_boost_status_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%tweet_boost_status_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%tweet_boost_status_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tweet_boost_status_data';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tweet_boost_notification_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tweet_boost_notification_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tweet_boost_notification_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tweet_boost_notification_%';

