#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'last_inventory_update'
wp option delete 'plz_update_pos_bo_setting'

# Clear Cron Jobs
wp cron event delete 'posit_inventory_cron'
wp cron event delete 'email_failed_sales_cron'

