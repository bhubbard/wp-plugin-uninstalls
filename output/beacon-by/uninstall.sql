-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beacon_authorized', 'beacon_connected', 'widget_beacon_widget', 'beacon_promote_options');

