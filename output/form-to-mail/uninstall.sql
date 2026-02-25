-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ftm_validate_required', 'ftm_validate_type', 'ftm_mail_failed', 'ftm_mail_success', 'ftm_mail', 'ftm_name', 'ftm_template_layout_if', 'ftm_template_layout', 'ftm_smtp_if', 'ftm_smtp_username', 'ftm_smtp_password', 'ftm_smtp_host', 'ftm_smtp_from', 'ftm_smtp_port', 'ftm_wp_all');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ftm_form_id', 'ftm_send_email', 'ftm_from_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('ftm_form_id', 'ftm_send_email', 'ftm_from_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('ftm_form_id', 'ftm_send_email', 'ftm_from_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ftm_form_id', 'ftm_send_email', 'ftm_from_email');

