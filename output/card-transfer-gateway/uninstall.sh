#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_card_transfer_gateway_settings'

# Clear Cron Jobs
wp cron event delete 'ctgfree_cronjob_update_order_statuses_cron_hook'

