#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wc_rlc_api_key_prod'
wp option delete 'wc_rlc_freight_weight_threshold'
wp option delete 'wc_rlc_environment'
wp option delete 'wc_rlc_sandbox_mode'
wp option delete 'wc_rlc_pallet_limit'
wp option delete 'wc_rlc_override_destination_accessorials'
wp option delete 'wc_rlc_override_limited_delivery'
wp option delete 'wc_rlc_override_inside_delivery'
wp option delete 'wc_rlc_override_destination_liftgate'
wp option delete 'wc_rlc_override_delivery_notification'
wp option delete 'wc_rlc_special_shipping_services'
wp option delete 'wc_rlc_must_ship_freight'
wp option delete 'wc_rlc_split_packaging'
wp option delete 'wc_rlc_debug_mode'
wp option delete 'wc_rlc_itemized_rates'
wp option delete 'woocommerce_manage_stock'
wp option delete 'wc_rlc_show_delivery_notification'
wp option delete 'wc_rlc_show_limited_delivery'
wp option delete 'wc_rlc_show_inside_delivery'
wp option delete 'wc_rlc_show_destination_liftgate'
wp option delete 'wc_rlc_packing_method'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rlc_%' OR option_name LIKE '_site_transient_rlc_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_force_freight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_force_freight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_force_freight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_force_freight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_hazmat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_hazmat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_hazmat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_hazmat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_state'"
