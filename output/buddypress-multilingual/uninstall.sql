-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%installed_plugins';
DELETE FROM wp_options WHERE option_name LIKE '%valid_plugins';
DELETE FROM wp_options WHERE option_name LIKE '%invalid_plugins';
DELETE FROM wp_options WHERE option_name LIKE '%expected_versions';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_type_name', 'bp_type_singular_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_type_name', 'bp_type_singular_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_type_name', 'bp_type_singular_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_type_name', 'bp_type_singular_name');

