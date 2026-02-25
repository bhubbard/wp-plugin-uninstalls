#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosq_settings'
wp option delete 'woosq_localization'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosq_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'
wp transient delete 'woosq_get_product_meta_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvi_images'"
