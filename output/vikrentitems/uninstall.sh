#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_widget_options'
wp option delete 'groupsysmessages'
wp option delete 'vikrentitems_software_version'
wp option delete 'vikrentitems_onactivate'
wp option delete 'vikrentitems_screen_failed_attempts'
wp option delete 'vikrentitems_list_limit'
wp option delete 'vikrentitems_changelog'
wp option delete 'vikrentitems_license_key'
wp option delete 'vikrentitems_license_expdate'
wp option delete 'vikrentitems_license_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vikrentitems_tmp_%'"
wp option delete 'vri_delivery_modal_tmpl_component'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vikrentitems_screen_%' OR option_name LIKE '_site_transient_vikrentitems_screen_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin'"
