-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_type_singular_name', 'bp_type_name', 'bp_type_has_directory', 'bp_type_directory_slug', 'bp_type_show_in_list', 'bp_type_show_in_create_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_type_singular_name', 'bp_type_name', 'bp_type_has_directory', 'bp_type_directory_slug', 'bp_type_show_in_list', 'bp_type_show_in_create_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_type_singular_name', 'bp_type_name', 'bp_type_has_directory', 'bp_type_directory_slug', 'bp_type_show_in_list', 'bp_type_show_in_create_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_type_singular_name', 'bp_type_name', 'bp_type_has_directory', 'bp_type_directory_slug', 'bp_type_show_in_list', 'bp_type_show_in_create_screen');

