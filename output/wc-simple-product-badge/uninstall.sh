#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_simple_product_badge_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_simple_product_badge_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_simple_product_badge_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_simple_product_badge_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_simple_product_badge_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_simple_product_badge_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_simple_product_badge_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_simple_product_badge_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_simple_product_badge_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_simple_product_badge_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_simple_product_badge_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_simple_product_badge_duration'"
