#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_colorlab_shop_id'
wp option delete 'woocommerce_colorlab_api_key'
wp option delete 'woocommerce_colorlab_secret_key'
wp option delete 'woocommerce_colorlab_customization_text'
wp option delete 'woocommerce_colorlab_add_to_cart_button'
wp option delete 'woocommerce_printlane_button_selector'
wp option delete 'woocommerce_colorlab_cart_thumbnails'
wp option delete 'woocommerce_colorlab_hide_reference'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_colorlab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_colorlab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_colorlab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_colorlab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_colorlab_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_colorlab_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_colorlab_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_colorlab_product'"
