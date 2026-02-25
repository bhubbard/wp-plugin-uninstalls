#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_json'
wp option delete 'woocommerce_imile_shipping_method_settings'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imile_create_shipping_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imile_create_shipping_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imile_create_shipping_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imile_create_shipping_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtu__t'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtu__t'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtu__t'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtu__t'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imile_update_shipping_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imile_update_shipping_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imile_update_shipping_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imile_update_shipping_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imile_check_shipping_response__'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imile_check_shipping_response__'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imile_check_shipping_response__'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imile_check_shipping_response__'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imile_delete_shipping_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imile_delete_shipping_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imile_delete_shipping_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imile_delete_shipping_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_item_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_item_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_item_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_item_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thankyou_action_done'"
