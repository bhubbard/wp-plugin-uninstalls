-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('occidg_license_key', 'occidg_ai_model', 'occidg_auto_add_details', 'occidg_metadata_fields', 'occidg_override_metadata', 'occidg_language', 'occidg_trial_expired', 'occidg_license_status', 'occidg_trial_usage', 'occidg_activation_redirect', 'occidg_first_time', 'occidg_trial_salt', 'occidg_image_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

