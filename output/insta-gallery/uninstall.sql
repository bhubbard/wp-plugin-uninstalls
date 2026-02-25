-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'insta_gallery_settings', 'insta_gallery_setting', 'insta_gallery_items', 'insta_gallery_feeds', 'insta_gallery_token', 'insta_gallery_accounts', 'insta_gallery_iac', 'cron', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

