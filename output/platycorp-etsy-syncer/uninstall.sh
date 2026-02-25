#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'platy_syncer_etsy_version'
wp option delete 'platy_etsy_default_etsy_shop'

# Delete Transients
wp transient delete 'platy_etsy_error_transient'
wp transient delete 'platy_etsy_success_transient'

# Clear Cron Jobs
wp cron event delete 'platy_etsy_stock_cron_hook'
wp cron event delete 'platy_etsy_clean_logs'
wp cron event delete 'platy_etsy_orders_cron_hook'

