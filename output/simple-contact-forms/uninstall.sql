-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scf_form', 'scf_db_version', 'scf_table_fields', 'scf_include_bootstrap', 'scf_validation_enable', 'scf_include_recaptcha', 'scf_validation', 'scf_send_to', 'scf_form_title', 'scf_email_subject', 'scf_email_recipients', 'scf_form_styling', 'scf_include_fontawesome', 'scf_submit_text', 'scf_submit_class', 'scf_success_msg', 'scf_valid_fail_text', 'scf_display_button', 'scf_default_collapse', 'scf_button_text', 'scf_button_class', 'scf_button_side', 'scf_button_icon', 'scf_recaptcha_public', 'scf_recaptcha_private');
DELETE FROM wp_options WHERE option_name LIKE 'scf_%';

