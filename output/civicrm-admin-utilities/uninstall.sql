-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('menu_items', 'civicrm_admin_utilities_installed', 'civicrm_admin_utilities_version', 'civicrm_admin_utilities_settings');

