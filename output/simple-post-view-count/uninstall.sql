-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simppovi_post_view_color', 'simppovi_post_view_title_color', 'simppovi_post_view_text', '_transient_simppovi_post_view_keys', '_transient_timeout_simppovi_post_view_keys', 'simppovi_db_version', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'simppovi_invalid_view_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_view', 'is_post_view', 'view_24_hour_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_view', 'is_post_view', 'view_24_hour_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_view', 'is_post_view', 'view_24_hour_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_view', 'is_post_view', 'view_24_hour_count');

