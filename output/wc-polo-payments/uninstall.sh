#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_polopagpayments_geteway_settings'
wp option delete 'polopagpayments_last_check'

# Clear Cron Jobs
wp cron event delete 'polopagpayments_schedule_api'
wp cron event delete 'polopagpayments_schedule'

