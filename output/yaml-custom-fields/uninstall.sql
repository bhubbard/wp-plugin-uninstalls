-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yaml_cf_schemas', 'yaml_cf_global_schema', 'yaml_cf_template_global_schemas', 'yaml_cf_data_object_types', 'yaml_cf_global_data', 'yaml_cf_partial_data', 'yaml_cf_template_global_data', 'yaml_cf_template_settings', 'yaml_cf_tracked_posts', 'yaml_cf_partial_schemas', 'yaml_cf_theme_templates');
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_data_object_entries_%';
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_data_objects_success_%';
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_data_object_success_%';
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_invalid_global_schema_%';
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_invalid_schema_%';
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_invalid_template_global_schema_%';
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_import_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'yaml_cf_templates_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yaml_cf_data', '_yaml_cf_schema', '_yaml_cf_use_template_global', '_yaml_cf_use_template_global_fields', '_wp_page_template', '_yaml_cf_imported', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yaml_cf_data', '_yaml_cf_schema', '_yaml_cf_use_template_global', '_yaml_cf_use_template_global_fields', '_wp_page_template', '_yaml_cf_imported', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yaml_cf_data', '_yaml_cf_schema', '_yaml_cf_use_template_global', '_yaml_cf_use_template_global_fields', '_wp_page_template', '_yaml_cf_imported', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yaml_cf_data', '_yaml_cf_schema', '_yaml_cf_use_template_global', '_yaml_cf_use_template_global_fields', '_wp_page_template', '_yaml_cf_imported', '_wp_attachment_image_alt');

