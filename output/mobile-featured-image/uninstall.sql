-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

