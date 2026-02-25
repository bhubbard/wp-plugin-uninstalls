-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'gvnews_settings', 'polylang', 'gutenverse-settings', 'gutenverse-global-variable', 'gutenverse-style-cache-id', 'gutenverse_compatibility_notice_flag', 'active_sitewide_plugins', 'gutenverse-global-setting', 'widget_block', 'gutenverse_plugin_permalinks_flushed', 'gutenverse-liked-layout', 'gutenverse-liked-section', 'gutenverse-subscribed', 'gutenverse-subscribed-email', 'gutenverse_compatibility_notice_close', 'deprecated_gutenverse_news_dismissed', 'gutenverse_redirect', 'gutenverse_banner_cache', 'gutenverse_wp_remote_get_status_cache');
DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-font-%';
DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-color-%';
DELETE FROM wp_options WHERE option_name LIKE '%_lite_plus_wizard_setup_done';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attachment_image_alt', 'gutenverse_page_custom_css', 'gutenverse_page_custom_js', 'gutense_templates_viewed', '_import_source', 'gutenverse_install_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attachment_image_alt', 'gutenverse_page_custom_css', 'gutenverse_page_custom_js', 'gutense_templates_viewed', '_import_source', 'gutenverse_install_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attachment_image_alt', 'gutenverse_page_custom_css', 'gutenverse_page_custom_js', 'gutense_templates_viewed', '_import_source', 'gutenverse_install_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attachment_image_alt', 'gutenverse_page_custom_css', 'gutenverse_page_custom_js', 'gutense_templates_viewed', '_import_source', 'gutenverse_install_notice');

