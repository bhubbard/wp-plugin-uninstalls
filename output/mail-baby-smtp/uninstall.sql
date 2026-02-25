-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smtp_error_log', 'MAIL_BABY_SMTP_options', '_wp_mailplus_from_info', '_wp_mailplus_enabled_service', 'sib_use_apiv2', 'sib_old_form_id', 'mailgun', '_wp_mailplus_service_info', 'sib_subscription_option', 'sib_signup_option', 'sib_confirm_option', 'sib_home_option', 'mbs_test_email_status', 'mbs_test_email_debug_log');
DELETE FROM wp_options WHERE option_name LIKE 'sib_credit_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_smtp_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_attributes_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_senders_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_totalusers_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_campaigns_%';

