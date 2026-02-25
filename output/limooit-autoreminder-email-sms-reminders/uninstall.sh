#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autormlite_%'"
wp option delete 'autormlite_minute'
wp option delete 'autormlite_hour'
wp option delete 'autormlite_day'
wp option delete 'autormlite_month'
wp option delete 'autormlite_weekday'
wp option delete 'autormlite_days_total'
wp option delete 'autormlite_days_before'
wp option delete 'autormlite_load_jquery'
wp option delete 'autormlite_reminder_send_method'
wp option delete 'autormlite_delete_data_on_uninstall'
wp option delete 'autormlite_text_email'
wp option delete 'autormlite_subject_email'
wp option delete 'autormlite_text_sms'
wp option delete 'limoo_selected_gateway'
wp option delete 'limoo_gateway_api_key'
wp option delete 'limoo_gateway_sender'
wp option delete 'autormlite_email_cron_minute'
wp option delete 'autormlite_email_cron_hour'
wp option delete 'autormlite_email_cron_day'
wp option delete 'autormlite_email_cron_month'
wp option delete 'autormlite_email_cron_weekday'
wp option delete 'autormlite_send_method'
wp option delete 'autormlite_last_email_report'
wp option delete 'autormlite_last_sms_report'

# Delete Transients
wp transient delete 'autormlite_reminders_lite_cache'

# Clear Cron Jobs
wp cron event delete 'autormlite_custom_email_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_purchase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_purchase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_purchase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_purchase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_email_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_email_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_email_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_email_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_notifications'"
