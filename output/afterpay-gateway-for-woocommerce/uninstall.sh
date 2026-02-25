#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_afterpay_settings'
wp option delete 'woocommerce_afterpay_api_error'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'afterpay-admin-activation-notice'

# Clear Cron Jobs
wp cron event delete 'afterpay_do_cron_jobs'

