#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'helpmate_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_admin' OR option_name LIKE '_site_transient_%_admin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_helpmate_review_request_%' OR option_name LIKE '_site_transient_helpmate_review_request_%'"

# Clear Cron Jobs
wp cron event delete 'helpmate_cleanup_completed_job'
wp cron event delete 'helpmate_process_bulk_documents_cron'
wp cron event delete 'helpmate_fallback_process'
wp cron event delete 'helpmate_refresh_segment_counts'
wp cron event delete 'helpmate_send_scheduled_campaign'
wp cron event delete 'helpmate_check_banner_expiration'
wp cron event delete 'helpmate_check_overdue_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpmate_crm_analytics_reports'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpmate_crm_analytics_reports'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpmate_crm_analytics_reports'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpmate_crm_analytics_reports'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpmate_job_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpmate_job_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpmate_job_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpmate_job_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
