#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'terminal_africa_merchant_id'
wp option delete 'terminal_africa_settings'
wp option delete 'terminal_default_shipping_weight'
wp option delete 'terminal_default_packaging_id'
wp option delete 'woocommerce_Terminal_delivery_settings'
wp option delete 'terminal_africa_merchant_address_id'
wp option delete 'terminal_user_carrier_shipment_timeline'
wp option delete 'terminal_africa_redirected'
wp option delete 'terminal_africa_countries'
wp option delete 'terminal_africa_merchant_address'
wp option delete 'woocommerce_terminal_delivery_settings'
wp option delete 'update_user_terminal_payment_gateway'
wp option delete 'woocommerce_terminal_africa_payment_settings'
wp option delete 'Enable_Free_Shipping_Above_Specific_Amount'
wp option delete 'Free_Shipping_Above_Specific_Amount'
wp option delete 'terminal_africa_notice_closed'
wp option delete 'terminal_default_currency_code'
wp option delete 'terminal_custom_price_mark_up'
wp option delete 'update_user_carrier_shipment_rate_terminal'
wp option delete 'update_user_carrier_shipment_insurance_terminal'
wp option delete 'woo_multi_currency_params'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'terminal_africa_states%'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_shipment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_rateid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_rateid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_rateid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_rateid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_carrierlogo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_carrierlogo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_carrierlogo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_carrierlogo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_merchant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_merchant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_merchant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_merchant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_carriername'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_carriername'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_carriername'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_carriername'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_api_ping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_api_ping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_api_ping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_api_ping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_initial_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_initial_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_initial_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_initial_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terminal_africa_delivery_arranged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terminal_africa_delivery_arranged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terminal_africa_delivery_arranged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terminal_africa_delivery_arranged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_guest_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_guest_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_guest_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_guest_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_pickuptime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_pickuptime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_pickuptime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_pickuptime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terminal_hscode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terminal_hscode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terminal_hscode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terminal_hscode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Terminal_africa_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Terminal_africa_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Terminal_africa_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Terminal_africa_status'"
