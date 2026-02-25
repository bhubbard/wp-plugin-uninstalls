-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms_footer_text', 'sms_username', 'sms_password', 'rem_sms_credit', 'all_msg_send', 'day_msg_stat', 'sms_server_status', 'sms_server_msg', 'SMSUsername', 'SMSPassword');

