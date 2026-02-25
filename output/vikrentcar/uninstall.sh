#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_widget_options'
wp option delete 'groupsysmessages'
wp option delete 'vikrentcar_software_version'
wp option delete 'vikrentcar_onactivate'
wp option delete 'vikrentcar_breaking_changes'
wp option delete 'vikrentcar_screen_failed_attempts'
wp option delete 'vikrentcar_list_limit'
wp option delete 'vikrentcar_changelog'
wp option delete 'vikrentcar_license_key'
wp option delete 'vikrentcar_license_expdate'
wp option delete 'vikrentcar_license_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vikrentcar_tmp_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vikrentcar_screen_%' OR option_name LIKE '_site_transient_vikrentcar_screen_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin'"
