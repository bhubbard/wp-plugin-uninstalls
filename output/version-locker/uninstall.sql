-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vlocker_audit_log', 'vlocker_keep_settings_on_delete', 'vlocker_is_multi_admin', 'update_plugins', 'vlocker_update_blocked');

