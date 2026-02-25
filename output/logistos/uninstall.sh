#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logistos_endpoint_credentials'
wp option delete 'logistos_endpoint_orders'
wp option delete 'logistos_do_activation_jobs'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_phone'

