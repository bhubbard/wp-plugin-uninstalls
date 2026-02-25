#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sale_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_refunded_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sync_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_limitation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customer_identity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sync_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_url'"

# Clear Cron Jobs
wp cron event delete 'skng_auto_sync'

