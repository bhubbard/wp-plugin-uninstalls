#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ossmsendle_settings'
wp option delete 'sendle_shipping_api_id'
wp option delete 'sendle_shipping_api_key'
wp option delete 'sendle_shipping_api_mode'
wp option delete 'woocommerce_enable_compatibility_mode'
wp option delete 'woocommerce_ossm_sendle_tracking_email_template'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_ossm_sendle_updatejoovii'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_ossm_sendle_checkzone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendle_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendle_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendle_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendle_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendle_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendle_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendle_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendle_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendle_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendle_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendle_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendle_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_company'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendle_post_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendle_post_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendle_post_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendle_post_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendle_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendle_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendle_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendle_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendle_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendle_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendle_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendle_post'"
