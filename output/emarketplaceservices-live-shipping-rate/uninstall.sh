#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'

