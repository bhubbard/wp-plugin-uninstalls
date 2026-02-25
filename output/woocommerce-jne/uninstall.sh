#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aw_shipping_wizard_completed'
wp option delete 'aw_shipping_wizard_hidden'
wp option delete 'aw_shipping_license'
wp option delete 'aw_shipping_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'aw_shipping_cod_enabled'
wp option delete 'aw_shipping_cod_activated_at'
wp option delete 'aw_shipping_kyc_verified'
wp option delete 'aw_shipping_kyc_verified_at'
wp option delete 'aw_shipping_analysis_result'
wp option delete 'aw_shipping_analysis_timestamp'
wp option delete 'woocommerce_jne_shipping_license_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_backup'"
wp option delete 'woocommerce_shipping_method_selection_priority'
wp option delete 'woocommerce_jne_shipping_settings'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'aw_shipping_do_activation_redirect'
wp option delete 'aw_shipping_db_version'

# Delete Transients
wp transient delete 'aw_wizard_license_type'
wp transient delete 'aw_wizard_license_error'
wp transient delete 'aw_wizard_config_error'
wp transient delete 'aw_wizard_courier_error'
wp transient delete 'aw_wizard_services_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aw_pending_log_%' OR option_name LIKE '_site_transient_aw_pending_log_%'"
wp transient delete 'aw_shipping_kyc_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aw_pickup_request_%' OR option_name LIKE '_site_transient_aw_pickup_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aw_bulk_awb_orders_%' OR option_name LIKE '_site_transient_aw_bulk_awb_orders_%'"
wp transient delete 'aw_shipping_services_domestic'
wp transient delete 'aw_shipping_services_instant'
wp transient delete 'aw_shipping_services_international'
wp transient delete 'aw_shipping_couriers_domestic'
wp transient delete 'aw_shipping_couriers_instant'
wp transient delete 'aw_shipping_couriers_international'

# Clear Cron Jobs
wp cron event delete 'aw_api_log_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
