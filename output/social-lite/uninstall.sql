-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cms-landingpage-data', 'cms-landingpage-analytics', '_sli_options', '_sli_account_type', '_sli_user_id', '_sli_username', '_sli_bio', '_sli_custom_bio', '_sli_profile_pic_url', '_sli_custom_profile_pic', '_sli_media_count', '_sli_follows_count', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('cms-landingpage-data', 'cms-landingpage-analytics', '_sli_options', '_sli_account_type', '_sli_user_id', '_sli_username', '_sli_bio', '_sli_custom_bio', '_sli_profile_pic_url', '_sli_custom_profile_pic', '_sli_media_count', '_sli_follows_count', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('cms-landingpage-data', 'cms-landingpage-analytics', '_sli_options', '_sli_account_type', '_sli_user_id', '_sli_username', '_sli_bio', '_sli_custom_bio', '_sli_profile_pic_url', '_sli_custom_profile_pic', '_sli_media_count', '_sli_follows_count', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cms-landingpage-data', 'cms-landingpage-analytics', '_sli_options', '_sli_account_type', '_sli_user_id', '_sli_username', '_sli_bio', '_sli_custom_bio', '_sli_profile_pic_url', '_sli_custom_profile_pic', '_sli_media_count', '_sli_follows_count', 'thumbnail_id');

