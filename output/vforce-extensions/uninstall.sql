-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows', 'vforce_helper', 'zendash_widget1', 'zendash_widget2', 'zendash_widget3', 'zendash_widget4', 'zendash_widget5', 'zendash_widget6', 'zendash_widget7', 'zendash_widget8');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('association_id_override', 'show_form_assembly_settings', 'form_assembly_form_id', 'form_assembly_hidden_input_id', 'vforce_formassembly_review_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('association_id_override', 'show_form_assembly_settings', 'form_assembly_form_id', 'form_assembly_hidden_input_id', 'vforce_formassembly_review_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('association_id_override', 'show_form_assembly_settings', 'form_assembly_form_id', 'form_assembly_hidden_input_id', 'vforce_formassembly_review_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('association_id_override', 'show_form_assembly_settings', 'form_assembly_form_id', 'form_assembly_hidden_input_id', 'vforce_formassembly_review_header');

