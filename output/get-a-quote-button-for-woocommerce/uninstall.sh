#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_gqb_installed'
wp option delete 'wpb_gqb_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_gqb_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_gqb_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_gqb_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_gqb_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_gqb_pro_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_gqb_pro_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_gqb_pro_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_gqb_pro_discount_dismissed'"
