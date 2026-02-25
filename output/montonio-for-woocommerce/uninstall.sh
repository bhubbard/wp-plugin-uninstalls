#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'montonio_shipping_enabled'
wp option delete 'montonio_shipping_dropdown_type'
wp option delete 'woocommerce_wc_montonio_api_settings'
wp option delete 'montonio_last_sync'
wp option delete 'montonio_payment_methods'
wp option delete 'montonio_telemetry_sync_timestamp'
wp option delete 'woocommerce_currency'
wp option delete 'montonio_shipping_orderStatusWhenLabelPrinted'
wp option delete 'montonio_shipping_order_status_when_delivered'
wp option delete 'montonio_email_tracking_code_text'
wp option delete 'montonio_shipping_show_address'
wp option delete 'montonio_shipping_show_provider_logos'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_montonio_payments_settings'
wp option delete 'woocommerce_wc_montonio_payments_settings'
wp option delete 'woocommerce_montonio_card_payments_settings'
wp option delete 'woocommerce_montonio_blik_payments_settings'
wp option delete 'montonio_shipping_accessKey'
wp option delete 'montonio_shipping_secretKey'
wp option delete 'montonio_shipping_sync_timestamp'
wp option delete 'woocommerce_wc_montonio_hire_purchase_settings'
wp option delete 'montonio_shipping_create_shipment_on_status'
wp option delete 'wc_montonio_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'montonio_banners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'montonio_banners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'montonio_banners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'montonio_banners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_montonio_no_parcel_machine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_montonio_no_parcel_machine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_montonio_no_parcel_machine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_montonio_no_parcel_machine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_montonio_separate_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_montonio_separate_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_montonio_separate_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_montonio_separate_label'"
