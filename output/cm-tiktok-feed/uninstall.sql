-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'widget_wtiktok_feed', 'factory_plugin_versions', 'wbcr_factory_google_fonts', 'wbcr_factory_google_fonts_raw');
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';

