#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sd_lar_account_activated'
wp option delete 'sd_lar_api_dev'
wp option delete 'sd_lar_api_token_dev'
wp option delete 'sd_lar_api_token_prod'
wp option delete 'sd_lar_settings_updated_order_status'
wp option delete 'sd_lar_settings_use_boxes'
wp option delete 'sd_lar_settings_signature'
wp option delete 'sd_lar_settings_free_shipping_value'
wp option delete 'sd_lar_settings_cheapest_carrier'
wp option delete 'sd_lar_settings_delivery_date'
wp option delete 'sd_lar_api_key_dev'
wp option delete 'sd_lar_api_key_prod'
wp option delete 'sd_lar_api_url'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'sd_lar_settings_boxes'
wp option delete 'sd_lar_settings_phone_number'
wp option delete 'sd_lar_settings_display_order_carrier'
wp option delete 'sd_lar_settings_carriers_list'
wp option delete 'sd_lar_client_url'
wp option delete 'sd_lar_settings_shipment_value'
wp option delete 'sd_lar_settings_predefined_package'
wp option delete 'sd_lar_settings_package_width'
wp option delete 'sd_lar_settings_package_length'
wp option delete 'sd_lar_settings_package_height'
wp option delete 'sd_lar_settings_package_weight'
wp option delete 'sd_lar_settings_class_list_type'
wp option delete 'sd_lar_settings_class_list_allow'
wp option delete 'sd_lar_settings_class_list_deny'
wp option delete 'lar_api_dev'
wp option delete 'lar_api_token_dev'
wp option delete 'lar_api_token_prod'
wp option delete 'lar_account_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sd_lar_ncv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sd_lar_ncv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sd_lar_ncv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sd_lar_ncv'"
