#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_default_country'
wp option delete '_easyparcel_migrated_v2'
wp option delete 'easyparcel_auto_fulfillment_settings'
wp option delete 'woocommerce_easyparcel_settings'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

# Clear Cron Jobs
wp cron event delete 'easyparcel_log_store_info_once'
wp cron event delete 'easyparcel_delete_old_zip_files'

