-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPMSM_mail_data', 'wpmsm_mail_smtp_ignore_notice', 'wpmsm_mailer_install_date', 'WPMS_mail_flag');

