-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auth_armor_setup_wizard', 'auth_armor_setup_wizard_confirm', 'autharmor_options', 'autharmor_wizard_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('login_method', 'autharmor_data_missmatch', 'autharmor_data', 'invite_user', 'autharmor_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('login_method', 'autharmor_data_missmatch', 'autharmor_data', 'invite_user', 'autharmor_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('login_method', 'autharmor_data_missmatch', 'autharmor_data', 'invite_user', 'autharmor_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('login_method', 'autharmor_data_missmatch', 'autharmor_data', 'invite_user', 'autharmor_status');

