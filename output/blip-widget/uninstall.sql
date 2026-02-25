-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blip_widget_last_cache', 'blip_widget_cache', 'blip_widget_feed');

