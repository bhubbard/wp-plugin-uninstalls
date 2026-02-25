#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_satispay_settings'

# Clear Cron Jobs
wp cron event delete 'wc_satispay_finalize_orders_event'

