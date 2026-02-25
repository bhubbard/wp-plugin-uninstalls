#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ced_similar_product_shop_visibility'
wp option delete 'ced_similar_product_heading'
wp option delete 'ced_similar_product_count'
wp option delete 'ced_similar_product_css'
wp option delete 'ced_similar_product_product_page_visibility'
wp option delete 'ced_similar_product_cart_visibility'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ced_similar_product_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ced_similar_product_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ced_similar_product_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ced_similar_product_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_similar_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_similar_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_similar_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_similar_product_ids'"
