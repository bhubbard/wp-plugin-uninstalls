-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fu_mail_subject', 'fu_mail_header', 'fu_mail_footer', 'fu_submit_val', 'fu_mail_body_lbl', 'fu_mail_success', 'fu_mail_error', 'fu_mail_email_not_exist');

