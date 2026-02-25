-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idehweb_lwp_settings', 'idehweb_lwp_settings_styles', 'idehweb_lwp_settings_localization', 'idehweb_lwp_settings_registration_fields', 'lwp_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'phone_number', '_billing_phone', 'userRegisteredNow', 'updatedPass', 'activation_code_timestamp', 'temporary_email', 'activation_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'phone_number', '_billing_phone', 'userRegisteredNow', 'updatedPass', 'activation_code_timestamp', 'temporary_email', 'activation_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'phone_number', '_billing_phone', 'userRegisteredNow', 'updatedPass', 'activation_code_timestamp', 'temporary_email', 'activation_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'phone_number', '_billing_phone', 'userRegisteredNow', 'updatedPass', 'activation_code_timestamp', 'temporary_email', 'activation_code');

