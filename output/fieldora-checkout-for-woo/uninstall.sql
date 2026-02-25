-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scfm_label_position', 'scfm_error_position', 'scfm_stylish_options', 'scfm_delete_data_on_uninstall', 'scfm_required_indicator', 'scfm_custom_fields', 'scfm_version');

