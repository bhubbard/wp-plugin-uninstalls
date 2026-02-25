#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webshipper_access_str'
wp option delete 'webshipper_filter_basket_by_currency'
wp option delete 'webshipper_remove_cart_recalculation'
wp option delete 'webshipper_google_maps_api_key'
wp option delete 'webshipper_drop_point_title'
wp option delete 'woocommerce_weight_unit'
wp option delete '_wcml_settings'
wp option delete 'woocommerce_currency'
wp option delete 'webshipper_drop_point_required'
wp option delete 'webshipper_save_droppoint_as_address'
wp option delete 'webshipper_expedite_order_statuses'
wp option delete 'webshipper_expedite_order_async'

# Delete Transients
wp transient delete 'webshipper_bulk_order_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wspup_pickup_point_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wspup_pickup_point_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wspup_pickup_point_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wspup_pickup_point_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_point_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_point_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_point_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_point_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_point_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_point_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_point_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_point_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_point_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_point_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_point_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_point_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_point_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_point_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_point_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_point_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_point_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_point_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_point_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_point_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_point_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_point_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_point_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_point_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_point_routing_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_point_routing_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_point_routing_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_point_routing_code'"
