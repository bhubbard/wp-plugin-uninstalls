#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hpy_variant_sort'
wp option delete 'hpy_disabled_auto_remove_dropdown'
wp option delete 'hpy_variant_respect'
wp option delete 'hpy_variant_then_sort'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'hpy_variant_stockLimit'
wp option delete 'hpy_plugin_deferred_admin_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_primary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_primary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_primary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_primary'"
