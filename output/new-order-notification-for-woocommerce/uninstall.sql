-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_new_order_id_for_notification', '__new_order_option', '_order_id_for_new_order_notification', '_non_v2_alert_options', 'nonw_settings');

