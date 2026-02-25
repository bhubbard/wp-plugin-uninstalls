#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gazchaps-woocommerce-auto-category-product-thumbnails_use-transients'
wp option delete 'gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry'
wp option delete 'gazchaps-woocommerce-auto-category-product-thumbnails_transient-expiry-custom'
wp option delete 'gazchaps-woocommerce-auto-category-product-thumbnails_shuffle'
wp option delete 'gazchaps-woocommerce-auto-category-product-thumbnails_recurse'
wp option delete 'gazchaps-woocommerce-auto-category-product-thumbnails_category-size'
wp option delete 'gazchaps-woocommerce-auto-category-product-thumbnails_exclude-thumbnail-ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
