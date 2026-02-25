-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fts_version', 'fts_settings', 'active_sitewide_plugins', 'feed_them_social_license_keys', 'fts_facebook_custom_api_token_user_id', 'fts_facebook_custom_api_token', 'fts_facebook_custom_api_token_user_id_biz', 'fts_facebook_custom_api_token_biz', 'fts_activated', 'fts_updated', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE 'fts_t_%';
DELETE FROM wp_options WHERE option_name LIKE 'fts_p_%';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fts_slick_ignore_rating_notice_nag2024', 'fts_feed_options_array');
DELETE FROM wp_usermeta WHERE meta_key IN ('fts_slick_ignore_rating_notice_nag2024', 'fts_feed_options_array');
DELETE FROM wp_termmeta WHERE meta_key IN ('fts_slick_ignore_rating_notice_nag2024', 'fts_feed_options_array');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fts_slick_ignore_rating_notice_nag2024', 'fts_feed_options_array');

