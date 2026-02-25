#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

