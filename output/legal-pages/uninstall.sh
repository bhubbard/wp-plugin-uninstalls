#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'adl_lp_general'
wp option delete 'adl_lp_social'
wp option delete 'adl_lp_misc'
wp option delete 'adl_lp_accept_term'
wp option delete 'wplp_legal_page_discount'
wp option delete 'adl_lp_excludePage'
wp option delete 'adl_demo_inserted'
wp option delete 'adl_ccpa_demo_inserted'
wp option delete 'adl_lp_popup'
wp option delete 'adl_lp_cookie'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_adl_legal_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_adl_legal_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_adl_legal_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_adl_legal_page'"
