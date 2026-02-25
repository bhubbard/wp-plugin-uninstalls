-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'qltgm', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qltgm-user-rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('qltgm-user-rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('qltgm-user-rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qltgm-user-rating');

