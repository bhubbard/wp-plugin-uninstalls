#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'droppcc-paywall-setting'
wp option delete 'droppcc-paywall-profile'

# Clear Cron Jobs
wp cron event delete 'dropp_paywall_data_log_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dropp_paywall_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dropp_paywall_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dropp_paywall_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dropp_paywall_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dropp_paywall_open_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dropp_paywall_open_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dropp_paywall_open_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dropp_paywall_open_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dropp_paywall_selected_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dropp_paywall_selected_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dropp_paywall_selected_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dropp_paywall_selected_restriction'"
