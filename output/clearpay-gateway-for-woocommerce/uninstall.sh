#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_clearpay_settings'
wp option delete 'woocommerce_clearpay_api_error'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'clearpay-admin-activation-notice'

# Clear Cron Jobs
wp cron event delete 'clearpay_do_cron_jobs'

