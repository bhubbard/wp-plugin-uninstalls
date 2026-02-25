-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfdb_form_notifier_api_key', 'cfdb_form_notifier_dev_mode', 'cfdb_form_notifier_version', 'cfdb_form_notifier_menu_roles');

