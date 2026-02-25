-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluent_booking_db_version', '_fluent_booking_settings', 'fluent_booking_payment_settings_stripe', 'fluent_booking_global_payment_settings', 'fluent_booking_modules', 'fluentmail-settings', '_fluent_booking_enabled_modules', '_fb_ins_by', 'fcom_last_summary_email_send', 'siteUrl', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'fluent_booking_payment_settings_%';

