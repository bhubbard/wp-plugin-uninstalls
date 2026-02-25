-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmb_empty_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acp_link_type', '_acp_link_value', '_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acp_link_type', '_acp_link_value', '_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acp_link_type', '_acp_link_value', '_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acp_link_type', '_acp_link_value', '_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

