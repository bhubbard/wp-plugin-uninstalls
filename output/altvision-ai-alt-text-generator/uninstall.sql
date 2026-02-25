-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('altvision_settings', 'altvision_license_status', 'altvision_license_key', 'altvision_license_error', 'altvision_license_check', 'altvision_last_verify');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('altvision_default_language', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('altvision_default_language', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('altvision_default_language', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('altvision_default_language', '_wp_attachment_image_alt');

