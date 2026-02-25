#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'retentionfox_settings'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'retentionfox_unsubs'

# Clear Cron Jobs
wp cron event delete 'retentionfox_send_abandoned_carts'
wp cron event delete 'retentionfox_send_abandoned_emails'

