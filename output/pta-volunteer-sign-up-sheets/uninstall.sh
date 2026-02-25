#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pta_volunteer_sus_main_options'
wp option delete 'pta_volunteer_sus_email_options'
wp option delete 'pta_sus_last_reminders'
wp option delete 'pta_sus_last_reschedule_emails'
wp option delete 'pta_sus_rescheduled_signup_ids'
wp option delete 'pta_volunteer_sus_validation_options'
wp option delete 'pta_sus_reminders_last_batch'
wp option delete 'pta_sus_reschedule_emails_last_batch'
wp option delete 'pta_volunteer_sus_integration_options'
wp option delete 'pta_sus_copied_tasks'
wp option delete 'pta_sus_last_log_clear'
wp option delete 'pta_sus_db_version'
wp option delete 'pta_sus_hide_admin_notice'

# Clear Cron Jobs
wp cron event delete 'pta_sus_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pta_member_directory_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pta_member_directory_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pta_member_directory_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pta_member_directory_email'"
