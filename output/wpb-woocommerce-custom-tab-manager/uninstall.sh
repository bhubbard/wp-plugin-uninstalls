#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_wctm_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_wctm_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_wctm_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_wctm_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_wctm_active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_wctm_active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_wctm_active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_wctm_active_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_wctm_pro_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_wctm_pro_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_wctm_pro_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_wctm_pro_discount_dismissed'"
