-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('happy_texting_settings_migrated', 'happy_texting_settings_option_name', 'happy_texting_settings_sms_option_name', 'orddd_location_field_label', 'happy_texting_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_state', 'billing_postcode', 'billing_birthdate', 'dob', 'birth_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_state', 'billing_postcode', 'billing_birthdate', 'dob', 'birth_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_state', 'billing_postcode', 'billing_birthdate', 'dob', 'birth_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_first_name', 'billing_last_name', 'billing_city', 'billing_state', 'billing_postcode', 'billing_birthdate', 'dob', 'birth_date');

