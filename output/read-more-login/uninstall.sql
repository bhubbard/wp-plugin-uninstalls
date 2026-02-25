-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aru_readmorelogin_textfading_option', 'aru_readmorelogin_searchengines_option', 'aru_readmorelogin_debuglog_option', 'aru_readmorelogin_linking_option', 'aru_readmorelogin_redirect_option', 'aru_readmorelogin_email_verification_option', 'aru_readmorelogin_email_reset_password_option', 'aru_readmorelogin_email_register_notification_option', 'aru_readmorelogin_text_fade_option');

