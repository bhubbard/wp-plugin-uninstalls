-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('et_personal_data_manager_installed', 'et_personal_data_manager_version');

