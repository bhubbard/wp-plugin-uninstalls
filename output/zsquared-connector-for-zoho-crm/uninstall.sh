#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zsq_crm_api_key'
wp option delete 'zsq_crm_order_prefix'
wp option delete 'zsq_crm_hook_trigger'
wp option delete 'zsq_crm_shipping_item'
wp option delete 'zsq_crm_slack_channel'
wp option delete 'zsq_crm_slack_url'
wp option delete 'zsq_crm_daily_sync_price'
wp option delete 'zsq_crm_daily_sync_qty'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zsq_crm_ex_to_woo_tax_map_%'"

# Clear Cron Jobs
wp cron event delete 'zsq_crm_daily_sync'

