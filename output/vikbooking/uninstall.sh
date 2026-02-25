#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_widget_options'
wp option delete 'groupsysmessages'
wp option delete 'vikbooking_software_version'
wp option delete 'vikbooking_onactivate'
wp option delete 'vikbooking_breaking_changes'
wp option delete 'vikbooking_screen_failed_attempts'
wp option delete 'vikbooking_list_limit'
wp option delete 'vikbooking_changelog'
wp option delete 'vikbooking_license_key'
wp option delete 'vikbooking_license_expdate'
wp option delete 'vikbooking_hide_vcmad'
wp option delete 'vikbooking_license_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vikbooking_tmp_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vikbooking_screen_%' OR option_name LIKE '_site_transient_vikbooking_screen_%'"

# Clear Cron Jobs
wp cron event delete 'vikbooking_cron_payments_scheduled'
wp cron event delete 'vikbooking_cron_performance_cleaner'
wp cron event delete 'vikbooking_cron_door_access_control'
wp cron event delete 'vikbooking_cron_db_optimization'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vikbooking_rss_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vikbooking_rss_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vikbooking_rss_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vikbooking_rss_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vikbooking_rss_display_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vikbooking_rss_display_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vikbooking_rss_display_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vikbooking_rss_display_dashboard'"
