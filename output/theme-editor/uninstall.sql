-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mk_te_settings_options', 'allowedthemes', 'theme_editor_child_theme_permission', 'mk_te_close_te_help_c');
DELETE FROM wp_options WHERE option_name LIKE 'theme_editor_email_verified_%';
DELETE FROM wp_options WHERE option_name LIKE 'theme_editor_email_address_%';
DELETE FROM wp_options WHERE option_name LIKE 'verify_theme_editor_fname_%';
DELETE FROM wp_options WHERE option_name LIKE 'verify_theme_editor_lname_%';
DELETE FROM wp_options WHERE option_name LIKE '%_debug';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE '%_configvars';
DELETE FROM wp_options WHERE option_name LIKE 'theme_editor_cancel_lk_popup_%';
DELETE FROM wp_options WHERE option_name LIKE '%_debug';

