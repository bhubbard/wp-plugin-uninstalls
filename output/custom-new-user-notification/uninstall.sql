-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnun_user_mail_content', 'cnun_admin_mail_content', 'cnun_user_mail_subject', 'cnun_admin_mail_subject', 'cnun_user_mail_sender_mail', 'cnun_admin_mail_sender_mail', 'cnun_user_mail_sender_name', 'cnun_admin_mail_sender_name');

