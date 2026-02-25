#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_shipping_methods' OR option_name LIKE '_site_transient_%_shipping_methods'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_access_token' OR option_name LIKE '_site_transient_%_access_token'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_manifest_orders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_manifest_orders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_manifest_orders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_manifest_orders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_manifest_pickup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_manifest_pickup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_manifest_pickup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_manifest_pickup_time'"
