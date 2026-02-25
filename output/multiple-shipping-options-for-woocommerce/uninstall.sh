#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mso_api_test_mode'
wp option delete 'mso_mswrflfq'
wp option delete 'mso_paid_key'
wp option delete 'mso_key_status'
wp option delete 'mso_key_direction'
wp option delete 'mso_key_subscriptions'
wp option delete 'mso_ups_spq_credentials_status'
wp option delete 'mso_usps_spq_credentials_status'
wp option delete 'mso_dhl_spq_credentials_status'
wp option delete 'mso_ups_lfq_credentials_status'
wp option delete 'mso_fedex_spq_credentials_status'
wp option delete 'mso_fedex_lfq_credentials_status'
wp option delete 'mso_edppf'
wp option delete 'mso_edpf'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'mso_company_name'
wp option delete 'mso_attention_name'
wp option delete 'mso_phone_number'
wp option delete 'mso_tax_identify_number'
wp option delete 'active_site_wide_plugins'
wp option delete 'mso_fedex_lfq_markup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_markup'"
wp option delete 'mso_ups_lfq_markup'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'mso_ups_spq_carrier_enable'
wp option delete 'mso_ups_spq_access_key'
wp option delete 'mso_ups_spq_account_number'
wp option delete 'mso_fedex_spq_carrier_enable'
wp option delete 'mso_fedex_spq_account_number'
wp option delete 'mso_fedex_spq_meter_number'
wp option delete 'mso_ups_lfq_carrier_enable'
wp option delete 'mso_ups_lfq_access_key'
wp option delete 'mso_ups_lfq_account_number'
wp option delete 'mso_fedex_lfq_carrier_enable'
wp option delete 'mso_fedex_lfq_account_number'
wp option delete 'mso_fedex_lfq_meter_number'
wp option delete 'mso_fedex_lfq_billing_account_number'
wp option delete 'mso_fedex_lfq_third_party_account_number'
wp option delete 'mso_fedex_lfq_billing_address'
wp option delete 'mso_fedex_lfq_billing_city'
wp option delete 'mso_fedex_lfq_billing_state'
wp option delete 'mso_fedex_lfq_billing_zip'
wp option delete 'mso_fedex_lfq_billing_country'
wp option delete 'mso_fedex_lfq_physical_address'
wp option delete 'mso_fedex_lfq_physical_city'
wp option delete 'mso_fedex_lfq_physical_state'
wp option delete 'mso_fedex_lfq_physical_zip'
wp option delete 'mso_fedex_lfq_physical_country'
wp option delete 'mso_csrfac'
wp option delete 'mso_csrfec'
wp option delete 'mso_free_shipping_option_weight_threshold'
wp option delete 'mso_free_shipping_option_cart_total'
wp option delete 'mso_no_shipping_cost_enable'
wp option delete 'mso_no_shipping_cost_options'
wp option delete 'mso_no_shipping_option_error_message'
wp option delete 'mso_no_shipping_option_custom_rate_label'
wp option delete 'mso_no_shipping_option_custom_rate_cost'
wp option delete 'mso_fedex_spq_rad'
wp option delete 'mso_ups_spq_rad'
wp option delete 'mso_ups_lfq_rad'
wp option delete 'mso_ups_lfq_liftgate'
wp option delete 'mso_fedex_lfq_rad'
wp option delete 'mso_fedex_lfq_liftgate'
wp option delete 'mso_dhl_spq_carrier_enable'
wp option delete 'mso_usps_spq_carrier_enable'
wp option delete 'mso_ups_spq_delivery_estimate'
wp option delete 'mso_usps_spq_delivery_estimate'
wp option delete 'mso_dhl_spq_delivery_estimate'
wp option delete 'mso_fedex_spq_delivery_estimate'
wp option delete 'mso_usps_spq_rad'
wp option delete 'mso_dhl_spq_rad'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_product_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_product_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_product_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_product_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_shipment_order_ship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_shipment_order_ship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_shipment_order_ship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_shipment_order_ship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_shipment_order_ship_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_shipment_order_ship_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_shipment_order_ship_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_shipment_order_ship_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_shipment_order_arranged_by_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_shipment_order_arranged_by_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_shipment_order_arranged_by_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_shipment_order_arranged_by_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_pallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_pallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_pallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_pallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_packaging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_packaging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_packaging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_packaging'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mso_enable_product_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mso_enable_product_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mso_enable_product_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mso_enable_product_setting'"
