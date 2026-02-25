-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comfortsmtp_version', 'comfortsmtp_testmsg', 'comfortsmtp_dashboard_widget', 'comfortsmtp_upgraded_notice', 'comfortsmtp_activated_notice', 'comfortsmtp_resend_filter_mail_content_type');

