#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_deema_payment_settings'

# Clear Cron Jobs
wp cron event delete 'deema_custom_cron'

