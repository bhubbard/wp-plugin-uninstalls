-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swiftad_config', 'swiftpost_license', 'swiftad_db_version', 'swiftad_version', 'swiftad_license', 'swiftimpressions_license_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ad_code', 'swiftad_target', 'swiftad_size', 'swiftad_target_type', 'swiftad_target_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('ad_code', 'swiftad_target', 'swiftad_size', 'swiftad_target_type', 'swiftad_target_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('ad_code', 'swiftad_target', 'swiftad_size', 'swiftad_target_type', 'swiftad_target_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ad_code', 'swiftad_target', 'swiftad_size', 'swiftad_target_type', 'swiftad_target_name');

