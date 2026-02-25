-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpua_remove_on_uninstall', 'wpua_enable_notification', 'wpua_role_change_notification_text', 'wpua_role_restore_notification_text');

