-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmb_empty_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'test_test', 'rest_test', 'field_test_field', 'test_value_input_empty', 'test_value_input_empty_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%container';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%container';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%container';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%container';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_group';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_group';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_group';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_group';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%speed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%speed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%speed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%speed';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%transition_speed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%transition_speed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%transition_speed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%transition_speed';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%navigation';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%navigation';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%navigation';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%navigation';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%caption_pos';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%caption_pos';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%caption_pos';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%caption_pos';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%overlay_alpha';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%overlay_alpha';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%overlay_alpha';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%overlay_alpha';

