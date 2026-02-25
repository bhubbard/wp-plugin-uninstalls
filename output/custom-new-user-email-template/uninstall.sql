-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnut_user_mail_content', 'cnut_admin_mail_content', 'cnut_user_mail_subject', 'cnut_admin_mail_subject', 'cnut_user_mail_sender_mail', 'cnut_admin_mail_sender_mail', 'cnut_user_mail_sender_name', 'cnut_admin_mail_sender_name');

