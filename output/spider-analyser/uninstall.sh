#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"
wp option delete 'wb_spider_info'
wp option delete 'wb_spider_analyser_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_spider_analyser_cnf_%'"
wp option delete 'wb_spider_analyser_promote'
wp option delete 'sp_an_max_id'
wp option delete 'sync_wb_spider'
wp option delete 'wb_spider_analyser_db_ver'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wp_wb_spider_analyser_cron'
wp cron event delete 'wb_wp_spider_trace_cron'

