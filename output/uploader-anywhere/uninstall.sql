-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('base_url_name', 'selector', 'nth_item', 'file_type_filters', 'label_button_use_this', 'insert_method', 'inserting_html_element', 'insert_after_or_before', 'url_query_key_values', 'is_multiple', 'redirect_url_after_upload', 'reload_after_upload', 'enable_media_library');
DELETE FROM wp_usermeta WHERE meta_key IN ('base_url_name', 'selector', 'nth_item', 'file_type_filters', 'label_button_use_this', 'insert_method', 'inserting_html_element', 'insert_after_or_before', 'url_query_key_values', 'is_multiple', 'redirect_url_after_upload', 'reload_after_upload', 'enable_media_library');
DELETE FROM wp_termmeta WHERE meta_key IN ('base_url_name', 'selector', 'nth_item', 'file_type_filters', 'label_button_use_this', 'insert_method', 'inserting_html_element', 'insert_after_or_before', 'url_query_key_values', 'is_multiple', 'redirect_url_after_upload', 'reload_after_upload', 'enable_media_library');
DELETE FROM wp_commentmeta WHERE meta_key IN ('base_url_name', 'selector', 'nth_item', 'file_type_filters', 'label_button_use_this', 'insert_method', 'inserting_html_element', 'insert_after_or_before', 'url_query_key_values', 'is_multiple', 'redirect_url_after_upload', 'reload_after_upload', 'enable_media_library');

