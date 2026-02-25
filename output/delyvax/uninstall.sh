#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'delyvax_pricing_enable'
wp option delete 'delyvax_limit_service_options'
wp option delete 'delyvax_create_shipment_on_paid'
wp option delete 'delyvax_create_shipment_on_confirm'
wp option delete 'delyvax_change_order_status'
wp option delete 'delyvax_api_token'
wp option delete 'delyvax_api_webhook_enable'
wp option delete 'delyvax_api_webhook_key'
wp option delete 'delyvax_customer_id'
wp option delete 'delyvax_shop_name'
wp option delete 'delyvax_shop_mobile'
wp option delete 'delyvax_shop_email'
wp option delete 'delyvax_shipping_phone'
wp option delete 'delyvax_processing_days'
wp option delete 'delyvax_processing_hours'
wp option delete 'delyvax_processing_time'
wp option delete 'delyvax_item_type'
wp option delete 'delyvax_volumetric_constant'
wp option delete 'delyvax_weight_option'
wp option delete 'delyvax_rate_adjustment_type'
wp option delete 'delyvax_insurance_premium'
wp option delete 'delyvax_source'
wp option delete 'delyvax_include_order_note'
wp option delete 'delyvax_cancel_delivery'
wp option delete 'delyvax_cancel_order'
wp option delete 'wc_settings_delyvax_shipping_rate_adjustment'
wp option delete 'delyvax_rate_adjustment_percentage'
wp option delete 'delyvax_rate_adjustment_flat'
wp option delete 'delyvax_multivendor'
wp option delete 'delyvax_free_shipping_type'
wp option delete 'delyvax_free_shipping_condition'
wp option delete 'delyvax_free_shipping_value'
wp option delete 'delyvax_company_id'
wp option delete 'delyvax_company_name'
wp option delete 'delyvax_user_id'
wp option delete 'woocommerce_delyvax_settings'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocs_welcome_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
