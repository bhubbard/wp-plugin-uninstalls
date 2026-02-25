-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mail_smtp_initial_version', 'wp_mail_smtp_activated_time', 'wpforms_installation_source', 'wp_mail_smtp_activation_prevent_redirect', 'wpforms_activation_redirect', 'aioseo_activation_redirect', 'wp_mail_smtp_connect_token', 'wp_mail_smtp_connect', 'mailer', 'wp_mail_smtp_version', 'wp_mail_smtp_activated', 'wp_mail_smtp_mail_key', 'swpsmtp_options', 'fluentmail-settings', 'postman_options', 'smtp_mailer_options', 'wp_smtp_options', 'wp_mail_smtp_summary_report_email_last_sent_week', 'wp_mail_smtp_source', 'active_sitewide_plugins', 'wp_mail_smtp', 'wp_mail_smtp_activation_redirect', '_rafflepress_welcome_screen_activation_redirect', '_monsterinsights_activation_redirect', '_seedprod_welcome_screen_activation_redirect', 'wp_mail_smtp_just_activated', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed', 'wp_mail_smtp_email_test_tab_removal_notice_dismissed', 'wp_mail_smtp_debug_events_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed', 'wp_mail_smtp_email_test_tab_removal_notice_dismissed', 'wp_mail_smtp_debug_events_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed', 'wp_mail_smtp_email_test_tab_removal_notice_dismissed', 'wp_mail_smtp_debug_events_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed', 'wp_mail_smtp_email_test_tab_removal_notice_dismissed', 'wp_mail_smtp_debug_events_per_page');

