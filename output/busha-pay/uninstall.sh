#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'busha_payment_methods'
wp option delete 'woocommerce_force_ssl_checkout'

# Clear Cron Jobs
wp cron event delete 'busha_check_orders'

