-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zingaya_user_email', 'zingaya_user_name', 'zingaya_api_key', 'zingaya_user_id', 'zingaya_active_widget', 'user_already_exists', 'zingaya_widget');
DELETE FROM wp_options WHERE option_name LIKE 'zingaya_widget_short_%';

