-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smntcs_admin_maintenance_enable', 'smntcs_admin_maintenance_uid');

