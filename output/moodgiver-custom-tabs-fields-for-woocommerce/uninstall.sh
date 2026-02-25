#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mood_ctcf_settings'
wp option delete 'mg_wc_cfmb'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mg_wc_tab_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mg_wc_tab_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mg_wc_tab_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mg_wc_tab_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mg_wc_tab_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mg_wc_tab_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mg_wc_tab_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mg_wc_tab_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mg_wc_tab_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mg_wc_tab_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mg_wc_tab_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mg_wc_tab_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mg_cf_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mg_cf_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mg_cf_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mg_cf_%'"
