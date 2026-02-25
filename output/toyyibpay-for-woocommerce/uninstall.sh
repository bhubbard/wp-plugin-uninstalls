#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_toyyibpay_settings'
wp option delete 'woocommerce_force_ssl_checkout'

# Clear Cron Jobs
wp cron event delete 'bill_inquiry'

