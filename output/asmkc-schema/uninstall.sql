-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asmkc_schema_settings', 'asmkc_schema_control', 'asmkc_person_defaults');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_asmkc_schema_enable', '_asmkc_schema_type_control', '_asmkc_schema_detected_types', '_asmkc_person_name', '_asmkc_person_job', '_asmkc_person_desc', '_asmkc_person_image', '_asmkc_person_sns', '_asmkc_service_name', '_asmkc_service_type', '_asmkc_service_parent_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_asmkc_schema_enable', '_asmkc_schema_type_control', '_asmkc_schema_detected_types', '_asmkc_person_name', '_asmkc_person_job', '_asmkc_person_desc', '_asmkc_person_image', '_asmkc_person_sns', '_asmkc_service_name', '_asmkc_service_type', '_asmkc_service_parent_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_asmkc_schema_enable', '_asmkc_schema_type_control', '_asmkc_schema_detected_types', '_asmkc_person_name', '_asmkc_person_job', '_asmkc_person_desc', '_asmkc_person_image', '_asmkc_person_sns', '_asmkc_service_name', '_asmkc_service_type', '_asmkc_service_parent_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_asmkc_schema_enable', '_asmkc_schema_type_control', '_asmkc_schema_detected_types', '_asmkc_person_name', '_asmkc_person_job', '_asmkc_person_desc', '_asmkc_person_image', '_asmkc_person_sns', '_asmkc_service_name', '_asmkc_service_type', '_asmkc_service_parent_url');

