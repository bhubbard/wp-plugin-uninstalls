-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtw_admin_notice', 'rtw_settings');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

