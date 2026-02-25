-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('racart_adminemail', 'racart_setcron_email', 'email_hour', 'racart_onehr_email_subject', 'racart_onehr_email_message', 'enable_exitintent', 'racart_popup_title', 'racart_popup_content', 'attachment_idpath');

