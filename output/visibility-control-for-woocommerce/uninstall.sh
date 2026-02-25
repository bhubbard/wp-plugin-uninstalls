#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grassblade_tincan_endpoint'
wp option delete 'grassblade_free_addons'
wp option delete 'grassblade_addons'
wp option delete 'visibility_control_for_woocommerce'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'

