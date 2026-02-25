#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_widget_options'
wp option delete 'vikrestaurants_software_version'
wp option delete 'vikrestaurants_onactivate'
wp option delete 'vikrestaurants_breaking_changes'
wp option delete 'vikrestaurants_screen_failed_attempts'
wp option delete 'vikrestaurants_list_limit'
wp option delete 'vikrestaurants_changelog'
wp option delete 'vikrestaurants_license_key'
wp option delete 'vikrestaurants_license_expdate'
wp option delete 'vikrestaurants_license_hash'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vikrestaurants_screen_%' OR option_name LIKE '_site_transient_vikrestaurants_screen_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vikrestaurants_rss_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vikrestaurants_rss_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vikrestaurants_rss_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vikrestaurants_rss_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vikrestaurants_rss_display_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vikrestaurants_rss_display_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vikrestaurants_rss_display_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vikrestaurants_rss_display_dashboard'"
