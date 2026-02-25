#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ad_approval'
wp option delete 'min_amount'
wp option delete 'ad_time'
wp option delete 'ad_cost'
wp option delete 'api_server'
wp option delete 'blacklist'
wp option delete 'payment_type'
wp option delete 'tadn_jal_db_version'

# Clear Cron Jobs
wp cron event delete 'tan_cronjob'

