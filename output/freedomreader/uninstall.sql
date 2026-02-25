-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freedomreader_subscription_plans', 'freedomreader_paypal_mode', 'freedomreader_support_notice_last_shown', 'freedomreader_support_notice_dismissed', 'freedomreader_auto_link_keywords', 'freedomreader_paypal_client_id', 'freedomreader_paypal_client_secret', 'freedomreader_currency', 'freedomreader_teaser_message', 'freedomreader_unlock_button_text', 'freedomreader_subscription_button_text', 'freedomreader_trial_days', 'freedomreader_show_progress_bar', 'freedomreader_show_reading_time', 'freedomreader_reading_time_mode', 'freedomreader_reading_speed', 'freedomreader_show_ask_author', 'freedomreader_auto_internal_links', 'freedomreader_keep_data_on_uninstall', 'freedomreader_auto_cleanup', 'freedomreader_export_format', 'freedomreader_auto_backup', 'freedomreader_backup_frequency', 'freedomreader_backup_retention', 'freedomreader_performance_monitoring', 'freedomreader_user_activity_logs', 'freedomreader_email_new_purchases', 'freedomreader_email_new_subscriptions', 'freedomreader_email_failed_payments', 'freedomreader_email_performance_alerts', 'freedomreader_db_version', 'freedomreader_daily_performance_report', 'freedomreader_default_price', 'freedomreader_performance_session');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_freedomreader_reading_time_manual', '_freedomreader_reading_time_mode', '_freedomreader_reading_time_auto', '_freedomreader_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_freedomreader_reading_time_manual', '_freedomreader_reading_time_mode', '_freedomreader_reading_time_auto', '_freedomreader_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_freedomreader_reading_time_manual', '_freedomreader_reading_time_mode', '_freedomreader_reading_time_auto', '_freedomreader_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_freedomreader_reading_time_manual', '_freedomreader_reading_time_mode', '_freedomreader_reading_time_auto', '_freedomreader_price');

