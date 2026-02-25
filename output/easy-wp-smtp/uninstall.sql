-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swpsmtp_options', 'smtp_test_mail', 'swpsmtp_pass_encrypted', 'swpsmtp_enc_key', 'easy_wp_smtp_activated_time', 'easy_wp_smtp_test_email', 'easy_wp_smtp_activation_prevent_redirect', 'easy_wp_smtp_initial_version', 'wpforms_activation_redirect', 'aioseo_activation_redirect', 'easy_wp_smtp_connect_token', 'easy_wp_smtp_connect', 'mailer', 'easy_wp_smtp_version', 'easy_wp_smtp_activated', 'easy_wp_smtp_mail_key', 'easy_wp_smtp_summary_report_email_last_sent_week', 'active_sitewide_plugins', 'easy_wp_smtp', 'easy_wp_smtp_lite_just_activated', 'easy_wp_smtp_sd_code', 'easy_wp_smtp_activation_redirect', 'easy_wp_smtp_just_activated', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easy_wp_smtp_pro_banner_dismissed', 'easy_wp_smtp_debug_events_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('easy_wp_smtp_pro_banner_dismissed', 'easy_wp_smtp_debug_events_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('easy_wp_smtp_pro_banner_dismissed', 'easy_wp_smtp_debug_events_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easy_wp_smtp_pro_banner_dismissed', 'easy_wp_smtp_debug_events_per_page');

