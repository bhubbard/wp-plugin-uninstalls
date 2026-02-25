-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acps_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acps_post_type', 'acps_taxonomy_values', 'acps_form_title', 'acps_title_position', 'acps_form_container_class', 'acps_form_labels', 'acps_keyword_text', 'acps_label_text', 'acps_submit_button_text', 'acps_keyword_input', 'acps_keyword_form_value', 'acps_blank_term', 'acps_multiple_terms');
DELETE FROM wp_usermeta WHERE meta_key IN ('acps_post_type', 'acps_taxonomy_values', 'acps_form_title', 'acps_title_position', 'acps_form_container_class', 'acps_form_labels', 'acps_keyword_text', 'acps_label_text', 'acps_submit_button_text', 'acps_keyword_input', 'acps_keyword_form_value', 'acps_blank_term', 'acps_multiple_terms');
DELETE FROM wp_termmeta WHERE meta_key IN ('acps_post_type', 'acps_taxonomy_values', 'acps_form_title', 'acps_title_position', 'acps_form_container_class', 'acps_form_labels', 'acps_keyword_text', 'acps_label_text', 'acps_submit_button_text', 'acps_keyword_input', 'acps_keyword_form_value', 'acps_blank_term', 'acps_multiple_terms');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acps_post_type', 'acps_taxonomy_values', 'acps_form_title', 'acps_title_position', 'acps_form_container_class', 'acps_form_labels', 'acps_keyword_text', 'acps_label_text', 'acps_submit_button_text', 'acps_keyword_input', 'acps_keyword_form_value', 'acps_blank_term', 'acps_multiple_terms');

