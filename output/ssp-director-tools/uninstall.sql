-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sspdt_feed_options', 'sspdt_api_key', 'sspdt_api_path', 'sspdt_format_options', 'sspdt_api_cache', 'sspdt_helpers', 'sspdt_defaults', 'sspdt_fancybox', 'widget_sspdt_widget');

