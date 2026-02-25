-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emwa_roles', 'emwaAdminbar', 'emwa_settings', 'emwa_role_string', 'emwaHelp', 'emwa_roles_cap_added');

