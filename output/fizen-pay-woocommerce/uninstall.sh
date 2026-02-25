#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'fizen_payment_methods'

# Clear Cron Jobs
wp cron event delete 'fizenpay_check_orders'

