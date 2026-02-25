-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('omniform_analytics_db_version', 'omniform_initial_version', 'omniform_activated_time', 'show_comments_cookies_opt_in', 'omniform_hcaptcha_secret_key', 'omniform_recaptchav2_secret_key', 'omniform_recaptchav3_secret_key', 'omniform_turnstile_secret_key', 'omniform_analytics_salt', 'omniform_just_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_site_key';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('submit_method', 'submit_action', 'required_label', 'notify_email', 'notify_email_subject', '_omniform_id', 'omniform_dismissed_newsletter_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('submit_method', 'submit_action', 'required_label', 'notify_email', 'notify_email_subject', '_omniform_id', 'omniform_dismissed_newsletter_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('submit_method', 'submit_action', 'required_label', 'notify_email', 'notify_email_subject', '_omniform_id', 'omniform_dismissed_newsletter_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('submit_method', 'submit_action', 'required_label', 'notify_email', 'notify_email_subject', '_omniform_id', 'omniform_dismissed_newsletter_notice');

