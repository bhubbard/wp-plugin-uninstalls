#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_review_rating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_wps_pro_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_wps_pro_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_wps_pro_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_wps_pro_discount_dismissed'"
