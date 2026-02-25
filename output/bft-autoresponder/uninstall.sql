-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('broadfast_debug', 'bft_bcc', 'bft_sender', 'bft_cleanup_raw_log', 'bft_sleep', 'bft_db_version', 'bft_use_cron_job', 'bft_cron_schedule', 'bft_require_name', 'bftpro_allow_get', 'bft_redirect', 'bft_optin', 'bft_subscribe_notify', 'bft_unsubscribe_notify', 'bft_auto_subscribe', 'bft_subscribe_to_blog', 'bft_subscribe_auto_login', 'bft_mails_per_run', 'bft_text_captcha', 'bft_use_text_captcha', 'bft_no_signup_popup_msg', 'bft_no_unsub_popup_msg', 'arigato_recaptcha', 'bftpro_recaptcha_public', 'bftpro_recaptcha_private', 'bftpro_recaptcha_version', 'bftpro_recaptcha_lang', 'bftpro_recaptcha_size', 'bftpro_recaptcha_score', 'bft_optin_subject', 'bft_optin_message', 'bft_optin_redirect', 'bft_no_double_optin_popup_msg', 'bft_hooked_up', 'bft_subscribe_notify_subject', 'bft_subscribe_notify_message', 'bft_subscribe_notify_receivers', 'bft_unsubscribe_notify_subject', 'bft_unsubscribe_notify_message', 'bft_unsubscribe_notify_receivers', 'bft_locale_url', 'bft_datepicker_css', 'bft_date', 'bft_last_start', 'bft_current_status', 'bft_lock_tables', 'bft_cf7_name_field', 'bft_cf7_email_field', 'bft_ninja_integration', 'in_ninja_form');
DELETE FROM wp_options WHERE option_name IN ('bft_formidable_integration', 'bft_wpforms_integration', 'bft_webhooks', 'bftpro_text_captcha');
DELETE FROM wp_options WHERE option_name LIKE '%_subject';
DELETE FROM wp_options WHERE option_name LIKE '%_message';
DELETE FROM wp_options WHERE option_name LIKE '%_receivers';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form_id', 'bft_logged_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form_id', 'bft_logged_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form_id', 'bft_logged_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form_id', 'bft_logged_in');

