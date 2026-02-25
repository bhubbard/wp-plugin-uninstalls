-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sep_exclude', 'jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

