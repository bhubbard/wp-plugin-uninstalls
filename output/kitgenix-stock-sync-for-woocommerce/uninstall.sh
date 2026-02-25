#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kitgenix_stock_sync_for_woocommerce_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kitgenix_stock_sync_for_woocommerce_kss_old_sku_%' OR option_name LIKE '_site_transient_kitgenix_stock_sync_for_woocommerce_kss_old_sku_%'"
wp transient delete 'kitgenix_stock_sync_for_woocommerce_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
