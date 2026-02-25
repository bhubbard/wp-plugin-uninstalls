#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_copperx_settings'

# Clear Cron Jobs
wp cron event delete 'copperx_check_orders'

