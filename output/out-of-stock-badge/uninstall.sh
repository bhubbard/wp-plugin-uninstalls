#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_out_of_stock_badge_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_out_of_stock_badge_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_out_of_stock_badge_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_out_of_stock_badge_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_out_of_stock_badgeClr_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_out_of_stock_badgeClr_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_out_of_stock_badgeClr_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_out_of_stock_badgeClr_meta'"
