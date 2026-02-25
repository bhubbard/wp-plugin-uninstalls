#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_widget_options'
wp option delete 'vikappointments_software_version'
wp option delete 'vikappointments_onactivate'
wp option delete 'vikappointments_breaking_changes'
wp option delete 'vikappointments_screen_failed_attempts'
wp option delete 'vikappointments_list_limit'
wp option delete 'vikappointments_changelog'
wp option delete 'vikappointments_license_key'
wp option delete 'vikappointments_license_expdate'
wp option delete 'vikappointments_license_hash'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vikappointments_screen_%' OR option_name LIKE '_site_transient_vikappointments_screen_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vikappointments_rss_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vikappointments_rss_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vikappointments_rss_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vikappointments_rss_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vikappointments_rss_display_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vikappointments_rss_display_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vikappointments_rss_display_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vikappointments_rss_display_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
