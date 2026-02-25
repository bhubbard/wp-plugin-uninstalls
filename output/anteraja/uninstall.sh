#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epeken_anteraja_kota_asal'
wp option delete 'epeken_anteraja_layanan'
wp option delete 'epeken_anteraja_nilai_diskon'
wp option delete 'epeken_anteraja_awal_diskon'
wp option delete 'epeken_anteraja_akhir_diskon'
wp option delete 'epeken_anteraja_quota_diskon'
wp option delete 'epeken_anteraja_basepath'
wp option delete 'epeken_anteraja_access_key_id'
wp option delete 'epeken_anteraja_secret_access_key'
wp option delete 'epeken_anteraja_prefix'
wp option delete 'epeken_enable_cod_kurir'
wp option delete 'epeken_anteraja_admin_cod_enabled'
wp option delete 'epeken_anteraja_shipper_name'
wp option delete 'epeken_anteraja_shipper_phone'
wp option delete 'epeken_anteraja_shipper_email'
wp option delete 'epeken_anteraja_shipper_address'
wp option delete 'epeken_anteraja_shipper_postcode'
wp option delete 'epeken_anteraja_order_status_pickup_request'
wp option delete 'epeken_anteraja_kecamatan_asal'
wp option delete 'woocommerce_anteraja_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'epeken_data_server'
wp option delete 'epeken_wcjne_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_anteraja_kecamatan_asal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_anteraja_kecamatan_asal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_anteraja_kecamatan_asal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_anteraja_kecamatan_asal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_anteraja_kota_asal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_anteraja_kota_asal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_anteraja_kota_asal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_anteraja_kota_asal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anteraja_dicount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anteraja_dicount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anteraja_dicount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anteraja_dicount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_postcode'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anteraja_postmeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anteraja_postmeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anteraja_postmeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anteraja_postmeta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anteraja_expect_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anteraja_expect_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anteraja_expect_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anteraja_expect_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anteraja_expect_finish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anteraja_expect_finish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anteraja_expect_finish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anteraja_expect_finish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_anteraja_shipper_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_anteraja_shipper_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_anteraja_shipper_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_anteraja_shipper_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_anteraja_shipper_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_anteraja_shipper_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_anteraja_shipper_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_anteraja_shipper_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_anteraja_shipper_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_anteraja_shipper_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_anteraja_shipper_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_anteraja_shipper_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_anteraja_shipper_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_anteraja_shipper_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_anteraja_shipper_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_anteraja_shipper_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_anteraja_shipper_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_anteraja_shipper_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_anteraja_shipper_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_anteraja_shipper_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anteraja_waybill_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anteraja_waybill_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anteraja_waybill_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anteraja_waybill_no'"
