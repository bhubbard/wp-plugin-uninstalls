#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'expedico_carrier_prices'
wp option delete 'woocommerce_tax_display_cart'

# Clear Cron Jobs
wp cron event delete 'expedico_sync_order_statuses'

