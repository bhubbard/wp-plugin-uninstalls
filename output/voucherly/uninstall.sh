#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_voucherly_settings'

# Clear Cron Jobs
wp cron event delete 'voucherly_finalize_orders_event'
wp cron event delete 'voucherly_update_payment_gateways_event'

