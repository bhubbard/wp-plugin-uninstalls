-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ssss_missing_fields', '_ssss_extremely_important_value', '_ssss_extremely_empty_value', '_ssss_form_loaded_value', '_ssss_form_time_elapsed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ssss_missing_fields', '_ssss_extremely_important_value', '_ssss_extremely_empty_value', '_ssss_form_loaded_value', '_ssss_form_time_elapsed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ssss_missing_fields', '_ssss_extremely_important_value', '_ssss_extremely_empty_value', '_ssss_form_loaded_value', '_ssss_form_time_elapsed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ssss_missing_fields', '_ssss_extremely_important_value', '_ssss_extremely_empty_value', '_ssss_form_loaded_value', '_ssss_form_time_elapsed');

