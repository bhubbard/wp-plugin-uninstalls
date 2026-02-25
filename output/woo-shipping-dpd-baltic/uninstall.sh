#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpd_api_service_provider'
wp option delete 'dpd_test_mode'
wp option delete 'dpd_api_username'
wp option delete 'dpd_api_password'
wp option delete 'dpd_parcels_countries'
wp option delete 'dpd_rod_service'
wp option delete 'dpd_return_labels'
wp option delete 'woocommerce_weight_unit'
wp option delete 'dpd_parcel_distribution'
wp option delete 'dpd_label_size'
wp option delete 'woocommerce_default_country'
wp option delete 'dpd_google_map_key'
wp option delete 'wc_shipping_dpd_baltic_db_version'
wp option delete 'dpd_request_order_nr'
wp option delete 'dpd_baltic_flash_notices'
wp option delete 'dpd_logging_mode'
wp option delete 'dpd_cod_fee'
wp option delete 'dpd_cod_fee_percentage'

# Clear Cron Jobs
wp cron event delete 'dpd_parcels_country_update'
wp cron event delete 'dpd_parcels_receiver'
wp cron event delete 'dpd_parcels_updater'

