-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fmpqb_email_templates', 'fmpqb_email_settings', 'fmpqb_saved_quizzes', 'fmpqb_registration_form_settings', 'fmpqb_roles_stats_snapshot', 'fmpqb_user_supported_plugin', 'fmpqb_users_columns');
DELETE FROM wp_options WHERE option_name LIKE 'role_created_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'registered_via_custom_form', 'last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'registered_via_custom_form', 'last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'registered_via_custom_form', 'last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'phone', 'registered_via_custom_form', 'last_login');

