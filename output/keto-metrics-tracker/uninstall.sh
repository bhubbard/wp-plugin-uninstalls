#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keto_metrics_tracker_measurement_units'
wp option delete 'keto_metrics_tracker_reminder_enabled'
wp option delete 'keto_metrics_tracker_reminder_time'
wp option delete 'keto_metrics_tracker_tracking_page'
wp option delete 'keto_metrics_tracker_email_from_name'
wp option delete 'keto_metrics_tracker_email_from_address'
wp option delete 'keto_metrics_tracker_enable_registration'
wp option delete 'keto_metrics_tracker_reminders_enabled'
wp option delete 'keto_metrics_tracker_db_version'
wp option delete 'hmt_tracking_page'
wp option delete 'hmt_enable_registration'
wp option delete 'keto_metrics_tracker_daily_last_sent'
wp option delete 'keto_metrics_tracker_monthly_last_sent'
wp option delete 'keto_metrics_tracker_weekly_last_sent'
wp option delete 'hmt_monthly_last_sent'
wp option delete 'hmt_measurement_units'
wp option delete 'hmt_reminder_enabled'
wp option delete 'hmt_reminder_time'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_keto_metrics_tracker_redirect_%' OR option_name LIKE '_site_transient_keto_metrics_tracker_redirect_%'"

# Clear Cron Jobs
wp cron event delete 'keto_metrics_tracker_reminder_check'
wp cron event delete 'keto_metrics_tracker_daily_reminder'
wp cron event delete 'keto_metrics_tracker_monthly_reminder'
wp cron event delete 'hmt_daily_reminder'
wp cron event delete 'hmt_monthly_reminder'
wp cron event delete 'hmt_reminder_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keto_metrics_tracker_reminders_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keto_metrics_tracker_reminders_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keto_metrics_tracker_reminders_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keto_metrics_tracker_reminders_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hmt_reminders_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hmt_reminders_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hmt_reminders_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hmt_reminders_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'keto_metrics_tracker_chart_period_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keto_metrics_tracker_chart_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keto_metrics_tracker_chart_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keto_metrics_tracker_chart_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keto_metrics_tracker_chart_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keto_metrics_tracker_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keto_metrics_tracker_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keto_metrics_tracker_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keto_metrics_tracker_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keto_metrics_tracker_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keto_metrics_tracker_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keto_metrics_tracker_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keto_metrics_tracker_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keto_metrics_tracker_weight_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keto_metrics_tracker_weight_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keto_metrics_tracker_weight_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keto_metrics_tracker_weight_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hmt_weight_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hmt_weight_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hmt_weight_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hmt_weight_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keto_metrics_tracker_weight_goal_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keto_metrics_tracker_weight_goal_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keto_metrics_tracker_weight_goal_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keto_metrics_tracker_weight_goal_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hmt_weight_goal_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hmt_weight_goal_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hmt_weight_goal_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hmt_weight_goal_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hmt_chart_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hmt_chart_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hmt_chart_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hmt_chart_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'hmt_chart_period_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'hmt_chart_period_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'hmt_chart_period_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hmt_chart_period_%'"
