#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nandann_smart_ai_404_redirect_options'

# Delete Transients
wp transient delete 'nandann_smart_ai_404_last_mail_error'
wp transient delete 'nandann_smart_ai_404_quick_stats'
wp transient delete 'nandann_smart_ai_404_statistics_today'
wp transient delete 'nandann_smart_ai_404_statistics_week'
wp transient delete 'nandann_smart_ai_404_statistics_month'
wp transient delete 'nandann_smart_ai_404_statistics_all'
wp transient delete 'nandann_smart_ai_404_chart_data'
wp transient delete 'nandann_smart_ai_404_total_log_count'
wp transient delete 'nandann_smart_ai_404_email_stats_daily'
wp transient delete 'nandann_smart_ai_404_email_stats_weekly'
wp transient delete 'nandann_smart_ai_404_email_stats_monthly'

# Clear Cron Jobs
wp cron event delete 'nandann_smart_ai_404_send_email_report_daily'
wp cron event delete 'nandann_smart_ai_404_send_email_report_weekly'
wp cron event delete 'nandann_smart_ai_404_send_email_report_monthly'
wp cron event delete 'nandann_smart_ai_404_cleanup_old_logs'

