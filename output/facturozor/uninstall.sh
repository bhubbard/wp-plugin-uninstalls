#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_facturozor_active'
wp option delete 'wc_facturozor_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_facturozor_module_%'"
wp option delete 'wc_facturozor_modules_fields'
wp option delete 'wc_facturozor_module_customers'
wp option delete 'wc_facturozor_module_products'
wp option delete 'wc_facturozor_module_orders'
wp option delete 'wc_facturozor_modules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_facturozor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_facturozor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_facturozor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_facturozor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_facturozor_last_sync_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_facturozor_last_sync_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_facturozor_last_sync_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_facturozor_last_sync_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_facturozor_last_sync_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_facturozor_last_sync_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_facturozor_last_sync_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_facturozor_last_sync_failed'"
