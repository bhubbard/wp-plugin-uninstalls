-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mlcf_delete_options', 'mlcf_email', 'mlcf_subject', 'mlcf_email_from', 'mlcf_success_message', 'mlcf_error_message', 'mlcf_error_wrong_mail', 'mlcf_field_name', 'mlcf_field_email', 'mlcf_field_subject', 'mlcf_field_www', 'mlcf_field_message', 'mlcf_field_required', 'mlcf_field_submit', 'mlcf_recaptcha_enabled', 'mlcf_recaptcha_private', 'mlcf_recaptcha_public', 'mlcf_recaptcha_error_msg', 'mlcf_delete_Options');

