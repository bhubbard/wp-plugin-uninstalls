#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_export_id'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woopcd_partialcod_methods'
wp option delete 'woocommerce_gateway_order'
wp option delete 'woopcd_partialcod'

