-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('preeco_widgets_timestamp', 'preeco_widgets_caching_enabled');

