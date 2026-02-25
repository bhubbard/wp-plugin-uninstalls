#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_stop_sp_reg_options'
wp option delete 'ss_stop_sp_reg_stats'
wp option delete 'ss_muswitch'
wp option delete 'wordpress_api_key'
wp option delete 'ss_cache'
wp option delete 'ssp_enable_custom_login'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ss_notice_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ss_notice_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ss_notice_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ss_notice_dismissed_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_wc_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_wc_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_wc_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_wc_notice_dismissed'"
