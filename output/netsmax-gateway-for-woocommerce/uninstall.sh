#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_netsmax-gateway-for-woocommerce_settings'
wp option delete 'netsmax_gateway_for_woocommerce_version'
wp option delete 'netsmax_gateway_for_woocommerce_store_id'

# Clear Cron Jobs
wp cron event delete 'woocommerce_order_sync_event_netsmax'

