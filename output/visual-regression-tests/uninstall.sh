#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vrts_test_runs_has_migrated_alerts'
wp option delete 'vrts_project_id'
wp option delete 'vrts_project_token'
wp option delete 'vrts_project_secret'
wp option delete 'vrts_disconnected'
wp option delete 'vrts_create_token'
wp option delete 'vrts_access_token'
wp option delete 'vrts_homepage_added'
wp option delete 'vrts_site_urls'
wp option delete 'vrts_connection_inactive'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'vrts_email_notification_cc_address'
wp option delete 'vrts_email_update_notification_address'
wp option delete 'vrts_email_api_notification_address'
wp option delete 'vrts_email_notification_address'
wp option delete 'vrts_license_success'
wp option delete 'vrts_license_failed'
wp option delete 'vrts_remaining_tests'
wp option delete 'vrts_total_tests'
wp option delete 'vrts_has_subscription'
wp option delete 'vrts_tier_id'
wp option delete 'vrts_email_manual_notification_address'
wp option delete 'vrts_click_selectors'
wp option delete 'vrts_license_key'
wp option delete 'vrts_automatic_comparison'
wp option delete 'vrts_updates_comparison'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'vrts_fetch_updates_cron'
wp cron event delete 'vrts_connection_check_cron'
wp cron event delete 'vrts_fetch_test_updates'
wp cron event delete 'vrts_fetch_test_run_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vrts_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vrts_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vrts_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vrts_onboarding'"
