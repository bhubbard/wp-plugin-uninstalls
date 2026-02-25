#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hubbed_success_install'
wp option delete 'hubbed_api_key'
wp option delete 'hubbed_store_id'
wp option delete 'hubbed_map_key'
wp option delete 'hubbed_key_location'
wp option delete 'hubbed_setting_enable'
wp option delete 'hubbed_button_placement'
wp option delete 'button_option'
wp option delete 'hubbed_button_placement_mini'
wp option delete 'hubbed_visible_for_checkout'
wp option delete 'hubbed_shipping_fee'
wp option delete 'hubbed_cutoff_price'
wp option delete 'hubbed_lower_price'
wp option delete 'hubbed_higher_price'
wp option delete 'woocommerce_checkout_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubbed_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubbed_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubbed_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubbed_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubbed_consignment_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubbed_consignment_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubbed_consignment_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubbed_consignment_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubbed_checkout_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubbed_checkout_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubbed_checkout_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubbed_checkout_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubbed_enable_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubbed_enable_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubbed_enable_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubbed_enable_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubbed_consignment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubbed_consignment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubbed_consignment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubbed_consignment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubbed_checkout_hubbedlb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubbed_checkout_hubbedlb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubbed_checkout_hubbedlb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubbed_checkout_hubbedlb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
