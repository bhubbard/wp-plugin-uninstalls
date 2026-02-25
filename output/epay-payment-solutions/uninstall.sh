#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_epay_dk_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ageverification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ageverification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ageverification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ageverification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ep_category_ageverification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ep_category_ageverification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ep_category_ageverification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ep_category_ageverification'"
