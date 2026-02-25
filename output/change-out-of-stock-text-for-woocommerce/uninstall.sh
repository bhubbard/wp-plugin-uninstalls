#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'aodroost_default_out_of_stock_free'
wp option delete 'aodroost_default_low_stock_free'
wp option delete 'aodroost_default_in_stock_free'

