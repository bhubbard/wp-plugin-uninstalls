#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfih_on_product'
wp option delete 'gfih_product_hide_single_cpt_page'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'gfih_on_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_featured_image'"
wp option delete 'gfih_action_location'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_single_cpt_page'"
wp option delete 'woocommerce_marketplace_suggestions'

# Delete Transients
wp transient delete 'amplify_plugins_woo_suggestions_update'
wp transient delete 'amplify_plugins_random_suggestion'
wp transient delete 'amplify_plugins_suggestions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
