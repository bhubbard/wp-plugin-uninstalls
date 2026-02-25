-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailerlite_api_key', 'mailerlite_enabled', 'account_id', 'account_subdomain', 'mailerlite_popups_disabled', 'mailerlite_platform', 'mailerlite_double_optin_disabled', 'mailerlite_forms_user_role_settings');

