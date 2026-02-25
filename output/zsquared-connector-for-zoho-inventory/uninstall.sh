#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zsq_inv_api_key'
wp option delete 'zsq_inv_order_prefix'
wp option delete 'zsq_inv_hook_trigger'
wp option delete 'zsq_inv_wh_select'
wp option delete 'zsq_inv_slack_channel'
wp option delete 'zsq_inv_slack_url'
wp option delete 'zsq_inv_daily_sync_price'
wp option delete 'zsq_inv_daily_sync_qty'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zsq_inv_ex_to_woo_tax_map_%'"

# Clear Cron Jobs
wp cron event delete 'zsq_inv_daily_sync'

