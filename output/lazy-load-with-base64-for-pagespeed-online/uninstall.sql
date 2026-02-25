-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('base64_data_checkbox', 'base64_include_image_checkbox', 'base64_include_image_content', 'base64_include_og_url_for_image_checkbox', 'base64_include_og_url_for_image_content', 'base64_set_max_file_size_content', 'base64_set_max_file_size_checkbox', 'base64_do_not_include_admin_checkbox', 'lazy_load_data_checkbox', 'lazy_load_exclude_image_checkbox', 'lazy_load_exclude_image_content', 'lazy_load_do_not_include_admin_checkbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('base64_include_image_content', 'base64_include_og_url_for_image_content', 'lazy_load_exclude_image_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('base64_include_image_content', 'base64_include_og_url_for_image_content', 'lazy_load_exclude_image_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('base64_include_image_content', 'base64_include_og_url_for_image_content', 'lazy_load_exclude_image_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('base64_include_image_content', 'base64_include_og_url_for_image_content', 'lazy_load_exclude_image_content');

