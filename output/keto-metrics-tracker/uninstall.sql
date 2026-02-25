-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keto_metrics_tracker_measurement_units', 'keto_metrics_tracker_reminder_enabled', 'keto_metrics_tracker_reminder_time', 'keto_metrics_tracker_tracking_page', 'keto_metrics_tracker_email_from_name', 'keto_metrics_tracker_email_from_address', 'keto_metrics_tracker_enable_registration', 'keto_metrics_tracker_reminders_enabled', 'keto_metrics_tracker_db_version', 'hmt_tracking_page', 'hmt_enable_registration', 'keto_metrics_tracker_daily_last_sent', 'keto_metrics_tracker_monthly_last_sent', 'keto_metrics_tracker_weekly_last_sent', 'hmt_monthly_last_sent', 'hmt_measurement_units', 'hmt_reminder_enabled', 'hmt_reminder_time');
DELETE FROM wp_options WHERE option_name LIKE 'keto_metrics_tracker_redirect_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('keto_metrics_tracker_reminders_enabled', 'hmt_reminders_enabled', 'keto_metrics_tracker_chart_type', 'keto_metrics_tracker_height', 'keto_metrics_tracker_age', 'nickname', 'keto_metrics_tracker_weight_goal', 'hmt_weight_goal', 'keto_metrics_tracker_weight_goal_date', 'hmt_weight_goal_date', 'hmt_chart_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('keto_metrics_tracker_reminders_enabled', 'hmt_reminders_enabled', 'keto_metrics_tracker_chart_type', 'keto_metrics_tracker_height', 'keto_metrics_tracker_age', 'nickname', 'keto_metrics_tracker_weight_goal', 'hmt_weight_goal', 'keto_metrics_tracker_weight_goal_date', 'hmt_weight_goal_date', 'hmt_chart_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('keto_metrics_tracker_reminders_enabled', 'hmt_reminders_enabled', 'keto_metrics_tracker_chart_type', 'keto_metrics_tracker_height', 'keto_metrics_tracker_age', 'nickname', 'keto_metrics_tracker_weight_goal', 'hmt_weight_goal', 'keto_metrics_tracker_weight_goal_date', 'hmt_weight_goal_date', 'hmt_chart_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('keto_metrics_tracker_reminders_enabled', 'hmt_reminders_enabled', 'keto_metrics_tracker_chart_type', 'keto_metrics_tracker_height', 'keto_metrics_tracker_age', 'nickname', 'keto_metrics_tracker_weight_goal', 'hmt_weight_goal', 'keto_metrics_tracker_weight_goal_date', 'hmt_weight_goal_date', 'hmt_chart_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'hmt_chart_period_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'hmt_chart_period_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'hmt_chart_period_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hmt_chart_period_%';

