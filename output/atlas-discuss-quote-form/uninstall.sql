-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email', 'phone', 'uploaded_file', 'adf_top_title', 'adf_email_field', 'adf_service_title', 'adf_service_options', 'adf_bottom_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('email', 'phone', 'uploaded_file', 'adf_top_title', 'adf_email_field', 'adf_service_title', 'adf_service_options', 'adf_bottom_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('email', 'phone', 'uploaded_file', 'adf_top_title', 'adf_email_field', 'adf_service_title', 'adf_service_options', 'adf_bottom_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email', 'phone', 'uploaded_file', 'adf_top_title', 'adf_email_field', 'adf_service_title', 'adf_service_options', 'adf_bottom_fields');

