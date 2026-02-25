#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shoppanel_active'
wp option delete 'woocommerce_manage_stock'
wp option delete 'shoppanel_default'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'shoppanel_mapbox_token'

