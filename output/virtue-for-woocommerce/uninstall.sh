#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'virtue_woocommerce_store_id'
wp option delete 'virtue_woocommerce_impact_widget_enabled'
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp transient delete 'virtue-woocommerce-admin-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
