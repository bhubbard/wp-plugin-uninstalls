#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipcloud_catch_all_webhook_id'
wp option delete 'woocommerce_shipcloud_settings'
wp option delete 'woocommerce_store_manager'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_company'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_weight'"
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_shipcloud_carriers'
wp option delete 'woocommerce_shipcloud_count_requests'
wp option delete 'wc_shipcloud_version'
wp option delete 'woocommerce_shipcloud_show_upgrade_notice'

# Delete Transients
wp transient delete 'shipcloud_downloads'
wp transient delete 'shipcloud_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_is_standard_parcel_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_is_standard_parcel_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_is_standard_parcel_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_is_standard_parcel_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_shipment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_shipment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_shipment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_shipment_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_sender_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_sender_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_sender_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_sender_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_recipient_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_recipient_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_recipient_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_recipient_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_parcel_delivery_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_parcel_delivery_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_parcel_delivery_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_parcel_delivery_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_shipment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_shipment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_shipment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_shipment_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_other'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_other'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_other'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_other'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_trackingevent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_trackingevent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_trackingevent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_trackingevent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_origin_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_origin_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_origin_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_origin_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipcloud_hs_tariff_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipcloud_hs_tariff_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipcloud_hs_tariff_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipcloud_hs_tariff_number'"
