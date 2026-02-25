-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arewa_apk_settings', 'arewa_apk_download_count', 'arewa_apk_plugin_settings', 'arewa_apk_comments_count', 'arewa_apk_average_rating');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_arewa_apk_version', '_arewa_apk_icon', '_arewa_apk_screenshots', '_arewa_apk_url', '_arewa_apk_short_description', '_arewa_apk_about', '_arewa_apk_comments_per_page', '_arewa_apk_disable_seo', '_arewa_apk_feature_graphic', '_arewa_apk_download_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_arewa_apk_version', '_arewa_apk_icon', '_arewa_apk_screenshots', '_arewa_apk_url', '_arewa_apk_short_description', '_arewa_apk_about', '_arewa_apk_comments_per_page', '_arewa_apk_disable_seo', '_arewa_apk_feature_graphic', '_arewa_apk_download_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_arewa_apk_version', '_arewa_apk_icon', '_arewa_apk_screenshots', '_arewa_apk_url', '_arewa_apk_short_description', '_arewa_apk_about', '_arewa_apk_comments_per_page', '_arewa_apk_disable_seo', '_arewa_apk_feature_graphic', '_arewa_apk_download_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_arewa_apk_version', '_arewa_apk_icon', '_arewa_apk_screenshots', '_arewa_apk_url', '_arewa_apk_short_description', '_arewa_apk_about', '_arewa_apk_comments_per_page', '_arewa_apk_disable_seo', '_arewa_apk_feature_graphic', '_arewa_apk_download_count');

