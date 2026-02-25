#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'

# Clear Cron Jobs
wp cron event delete 'expire_products_hook'
wp cron event delete 'notifybefore_hook'
wp cron event delete 'notifyafter_hook'
wp cron event delete 'deleteproduct_hook'

