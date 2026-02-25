-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thron_option_api_page', 'thron_list_folder', 'thron_folders', 'thron_pkey', 'thron_rootCategoryId', 'thron_playerTemplates', 'thron_last_sync', 'thron_token_id', 'tracking_context', 'thron_token_id_time', 'thron_tracking_context');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crop_sizes', 'crop_params', 'thron_id', '_wp_attached_file', '_wp_attachment_metadata', '_wp_attachment_image_alt', '_wp_page_template', 'crop_absolute_params', '_elementor_page_settings', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('crop_sizes', 'crop_params', 'thron_id', '_wp_attached_file', '_wp_attachment_metadata', '_wp_attachment_image_alt', '_wp_page_template', 'crop_absolute_params', '_elementor_page_settings', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('crop_sizes', 'crop_params', 'thron_id', '_wp_attached_file', '_wp_attachment_metadata', '_wp_attachment_image_alt', '_wp_page_template', 'crop_absolute_params', '_elementor_page_settings', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crop_sizes', 'crop_params', 'thron_id', '_wp_attached_file', '_wp_attachment_metadata', '_wp_attachment_image_alt', '_wp_page_template', 'crop_absolute_params', '_elementor_page_settings', '_elementor_data');

