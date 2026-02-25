#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freedomreader_subscription_plans'
wp option delete 'freedomreader_paypal_mode'
wp option delete 'freedomreader_support_notice_last_shown'
wp option delete 'freedomreader_support_notice_dismissed'
wp option delete 'freedomreader_auto_link_keywords'
wp option delete 'freedomreader_paypal_client_id'
wp option delete 'freedomreader_paypal_client_secret'
wp option delete 'freedomreader_currency'
wp option delete 'freedomreader_teaser_message'
wp option delete 'freedomreader_unlock_button_text'
wp option delete 'freedomreader_subscription_button_text'
wp option delete 'freedomreader_trial_days'
wp option delete 'freedomreader_show_progress_bar'
wp option delete 'freedomreader_show_reading_time'
wp option delete 'freedomreader_reading_time_mode'
wp option delete 'freedomreader_reading_speed'
wp option delete 'freedomreader_show_ask_author'
wp option delete 'freedomreader_auto_internal_links'
wp option delete 'freedomreader_keep_data_on_uninstall'
wp option delete 'freedomreader_auto_cleanup'
wp option delete 'freedomreader_export_format'
wp option delete 'freedomreader_auto_backup'
wp option delete 'freedomreader_backup_frequency'
wp option delete 'freedomreader_backup_retention'
wp option delete 'freedomreader_performance_monitoring'
wp option delete 'freedomreader_user_activity_logs'
wp option delete 'freedomreader_email_new_purchases'
wp option delete 'freedomreader_email_new_subscriptions'
wp option delete 'freedomreader_email_failed_payments'
wp option delete 'freedomreader_email_performance_alerts'
wp option delete 'freedomreader_db_version'
wp option delete 'freedomreader_daily_performance_report'
wp option delete 'freedomreader_default_price'

# Delete Transients
wp transient delete 'freedomreader_performance_session'

# Clear Cron Jobs
wp cron event delete 'freedomreader_auto_backup'
wp cron event delete 'freedomreader_performance_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freedomreader_reading_time_manual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freedomreader_reading_time_manual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freedomreader_reading_time_manual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freedomreader_reading_time_manual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freedomreader_reading_time_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freedomreader_reading_time_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freedomreader_reading_time_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freedomreader_reading_time_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freedomreader_reading_time_auto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freedomreader_reading_time_auto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freedomreader_reading_time_auto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freedomreader_reading_time_auto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freedomreader_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freedomreader_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freedomreader_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freedomreader_price'"
