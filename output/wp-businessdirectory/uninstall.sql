-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('businessdirectory_admin_notices', 'update_plugins', 'businessdirectory_installing');

