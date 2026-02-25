-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('summits_alert_message', 'summits_alert_theme', 'summits_alert_css', 'summits_alert_center_message', 'summit_alert_message');

