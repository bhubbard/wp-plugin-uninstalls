#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woaf_per_column'
wp option delete 'ant_additional_order_enabled_filters'
wp option delete 'woaf_custom_filters'

