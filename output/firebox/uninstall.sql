-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('firebox_activation_redirect', 'firebox_onboarding_completed', 'firebox_version', 'firebox_settings', 'firebox_import', 'firebox_license_status', 'firebox_license_key', 'hide-admin-bar', 'active_sitewide_plugins', 'fpf_geo_license_key');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('firebox_meta', 'fpframework_meta_settings', '_fpframework_templates_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('firebox_meta', 'fpframework_meta_settings', '_fpframework_templates_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('firebox_meta', 'fpframework_meta_settings', '_fpframework_templates_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('firebox_meta', 'fpframework_meta_settings', '_fpframework_templates_image_hash');

