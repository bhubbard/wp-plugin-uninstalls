#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipo_api_key'
wp option delete 'shipo_access_token'
wp option delete 'shipo_token_expiry'
wp option delete 'shipo_sender_address'
wp option delete 'shipo_automation_awb'
wp option delete 'shipo_custom_delivery_name'
wp option delete 'shipo_show_couriers'
wp option delete 'shipo_free_shipping'
wp option delete 'shipo_test_mode'
wp option delete 'shipo_sender_method'
wp option delete 'shipo_couriers_show'
wp option delete 'shipo_couriers_show_services'
wp option delete 'shipo_couriers_custom_price'
wp option delete 'shipo_couriers_custom_price_type'
wp option delete 'shipo_couriers_custom_name'
wp option delete 'shipo_sender_locker'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shipo_pricing_percentage_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shipo_%'"
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'shipo_admin_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipo_shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipo_shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipo_shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipo_shipping_address'"
