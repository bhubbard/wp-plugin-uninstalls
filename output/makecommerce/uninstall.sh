#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mk_machines_expires'
wp option delete 'mk_machines_cache'
wp option delete 'mc_shipping_plus_confirmed'
wp option delete 'mc_shipping_plus'
wp option delete 'makecommerce_install_status'
wp option delete 'mk_shop_id'
wp option delete 'mk_test_shop_id'
wp option delete 'mk_api_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%shop_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%public_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%private_key'"
wp option delete 'mc_parcel_machine_map'
wp option delete 'mc_map_geocoding'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'mc_shop_id'
wp option delete 'mc_secret_key'
wp option delete 'mc_public_key'
wp option delete 'mc_test_shop_id'
wp option delete 'mc_test_secret_key'
wp option delete 'mc_test_public_key'
wp option delete 'mc_api_mode'
wp option delete 'mc_instance_id'
wp option delete 'mc_shipping'
wp option delete 'mc_payments'
wp option delete 'mc_credentials_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%secret_key'"
wp option delete 'mc_shop_name'
wp option delete 'mc_banklinks_api_type'
wp option delete 'woocommerce_makecommerce_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments'"
wp option delete 'mc_version'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wc_mc_version'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'mk_checkout_sco'
wp option delete 'mk_label_format'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'mc_google_api_key'
wp option delete 'mc_map_geocoding_api_key'
wp option delete 'mk_lpexpress_template'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'

# Delete Transients
wp transient delete 'wc_shipping_method_count'
wp transient delete 'timeout_wc_shipping_method_count'
wp transient delete 'shipping-transient-version'
wp transient delete '_set_parcel_machine_meta_transient'
wp transient delete '_update_courier_meta_transient'

# Clear Cron Jobs
wp cron event delete 'mc_banklinks_update_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_no_parcel_machine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_no_parcel_machine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_no_parcel_machine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_no_parcel_machine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcel_machine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcel_machine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcel_machine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcel_machine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_makecommerce_sc_cart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_makecommerce_sc_cart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_makecommerce_sc_cart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_makecommerce_sc_cart_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_pay_later_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_pay_later_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_pay_later_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_pay_later_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_no_shipping_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_no_shipping_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_no_shipping_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_no_shipping_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_invalid_google_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_invalid_google_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_invalid_google_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_invalid_google_api_key'"
