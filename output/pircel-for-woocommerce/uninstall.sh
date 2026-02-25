#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pircel_sizes_options'
wp option delete 'pircel_mapping_options'
wp option delete 'pircel_options'
wp option delete 'woocommerce_store_id'
wp option delete 'pircel_tools_options'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wc_shipping_method_count'
wp transient delete 'wc_shipping_method_count_legacy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pircel_shipment_%' OR option_name LIKE '_site_transient_pircel_shipment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pircel_shipment_for_%' OR option_name LIKE '_site_transient_pircel_shipment_for_%'"

