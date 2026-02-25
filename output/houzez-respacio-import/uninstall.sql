-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('property_verification_api', 'verify_api', 'sync_type', 'xmlFileLink', 'respacio_save_image_formats_list1', 'respacio_save_image_formats_list2', 'RespacioHouzezImportLogPerPage', 'RespacioHouzezImportCrmBasePath', 'RespacioHouzezImportEmailControllerPath', 'RespacioHouzezImportCreateAccountPath', 'RespacioHouzezImportSignature', 'RespacioHouzezImportAccountLoginPath', 'respacio_houzez_custom_fields', 'property_export');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('form_active', 'fave_property_id', 'fave_agent_email', 'fave_agent_office_num', '_thumbnail_id', 'form_type', 'form_type_name', 'form_id', 'form_title', 'form_field_map', 'fave_video_image', 'property_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('form_active', 'fave_property_id', 'fave_agent_email', 'fave_agent_office_num', '_thumbnail_id', 'form_type', 'form_type_name', 'form_id', 'form_title', 'form_field_map', 'fave_video_image', 'property_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('form_active', 'fave_property_id', 'fave_agent_email', 'fave_agent_office_num', '_thumbnail_id', 'form_type', 'form_type_name', 'form_id', 'form_title', 'form_field_map', 'fave_video_image', 'property_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('form_active', 'fave_property_id', 'fave_agent_email', 'fave_agent_office_num', '_thumbnail_id', 'form_type', 'form_type_name', 'form_id', 'form_title', 'form_field_map', 'fave_video_image', 'property_id');

