#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myfatoorah_shipping_settings'
wp option delete 'woocommerce_myfatoorah_v2_settings'
wp option delete 'woocommerce_myfatoorah_embedded_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Clear Cron Jobs
wp cron event delete 'myfatoorah_backup_log_files'

