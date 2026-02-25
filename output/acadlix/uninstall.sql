-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acadlix_activation_pending', 'acadlix_deactivated_plugin_notice', 'acadlix_addon_social_login_enabled', 'acadlix_addon_bulk_question_upload_enabled', 'acadlix_addon_assignments_enabled', 'acadlix_addon_zoom_integration_enabled', 'acadlix_addon_advanced_report_enabled', 'acadlix_addon_subscriptions_enabled', 'acadlix_addon_data_exporter_enabled', 'acadlix_addon_question_error_reporting_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acadlix_profile_photo', '_wp_attachment_image_alt', 'first_name', 'last_name', 'description', '_acadlix_profile_phonecode', '_acadlix_profile_phone_number', '_acadlix_profile_address', '_acadlix_profile_country', '_acadlix_profile_city', '_acadlix_profile_zip_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acadlix_profile_photo', '_wp_attachment_image_alt', 'first_name', 'last_name', 'description', '_acadlix_profile_phonecode', '_acadlix_profile_phone_number', '_acadlix_profile_address', '_acadlix_profile_country', '_acadlix_profile_city', '_acadlix_profile_zip_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acadlix_profile_photo', '_wp_attachment_image_alt', 'first_name', 'last_name', 'description', '_acadlix_profile_phonecode', '_acadlix_profile_phone_number', '_acadlix_profile_address', '_acadlix_profile_country', '_acadlix_profile_city', '_acadlix_profile_zip_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acadlix_profile_photo', '_wp_attachment_image_alt', 'first_name', 'last_name', 'description', '_acadlix_profile_phonecode', '_acadlix_profile_phone_number', '_acadlix_profile_address', '_acadlix_profile_country', '_acadlix_profile_city', '_acadlix_profile_zip_code');

