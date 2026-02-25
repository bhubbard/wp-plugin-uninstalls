-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iphods_activation_permissions', 'iphods_activation_permission', 'iphods_backlink_permission', 'iphods_affiliate_program', 'iphods_backlink_permissions');

