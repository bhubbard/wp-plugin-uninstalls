#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pfbt_order_statuses'

# Clear Cron Jobs
wp cron event delete 'pisol_pfbt_process_orders_batch_hook'

