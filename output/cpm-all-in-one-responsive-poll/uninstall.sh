#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpm_wp_poll_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cpm_wp_poll_voted_user_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_wp_poll_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_wp_poll_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_wp_poll_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_wp_poll_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_wp_poll_chart_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_wp_poll_chart_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_wp_poll_chart_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_wp_poll_chart_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_poll_multiple_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_poll_multiple_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_poll_multiple_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_poll_multiple_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_wp_poll_show_result_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_wp_poll_show_result_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_wp_poll_show_result_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_wp_poll_show_result_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_wp_poll_never_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_wp_poll_never_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_wp_poll_never_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_wp_poll_never_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_poll_expires_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_poll_expires_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_poll_expires_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_poll_expires_on'"
