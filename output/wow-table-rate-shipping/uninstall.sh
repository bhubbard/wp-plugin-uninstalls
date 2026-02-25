#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtrs_carrier_cache_version'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_default_country'
wp option delete 'edd_wtrs_license_key'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_currency_pos'
wp option delete 'edd_wtrs_license_data'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'active_sitewide_plugins'
wp option delete 'wtrs-settings'
wp option delete 'wtrs-shipping-rules'
wp option delete 'wtrs_rule_import_job_status'

# Delete Transients
wp transient delete 'durbin_country_code'

# Clear Cron Jobs
wp cron event delete 'wtrs_process_rule_import_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
