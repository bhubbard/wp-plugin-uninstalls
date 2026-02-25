-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awraq_getGoogleCaptchaKeys', 'awraq_blocked_ips', 'aavoya_wraq_global_settings', 'aavoya_wraq_random_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aavoya_wraq_fe_is_opened', 'awraqFormAdminNotification', 'awraqFormUserNotification', 'googleCaptchaMeta', 'aavoya_wraq_meta_key', '_awraq_button_data', '_awraq_form_data', 'awraq_term_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('aavoya_wraq_fe_is_opened', 'awraqFormAdminNotification', 'awraqFormUserNotification', 'googleCaptchaMeta', 'aavoya_wraq_meta_key', '_awraq_button_data', '_awraq_form_data', 'awraq_term_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('aavoya_wraq_fe_is_opened', 'awraqFormAdminNotification', 'awraqFormUserNotification', 'googleCaptchaMeta', 'aavoya_wraq_meta_key', '_awraq_button_data', '_awraq_form_data', 'awraq_term_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aavoya_wraq_fe_is_opened', 'awraqFormAdminNotification', 'awraqFormUserNotification', 'googleCaptchaMeta', 'aavoya_wraq_meta_key', '_awraq_button_data', '_awraq_form_data', 'awraq_term_meta');

