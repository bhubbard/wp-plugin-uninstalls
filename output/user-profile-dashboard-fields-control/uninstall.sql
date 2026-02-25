-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('updfc_selected_roles');
DELETE FROM wp_options WHERE option_name LIKE 'updfc_enable_%';

