#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'bolt_should_delete_historic_session'
wp option delete 'bolt_delete_historic_session_time_to_delete'
wp option delete 'delete_bolt_quick_buy_product_resources'
wp option delete 'delete_bolt_resources_registered_time'
wp option delete 'delete_bolt_resources_time'
wp option delete 'delete_bolt_session_data_resources'
wp option delete 'delete_bolt_session_posteddata_resources'
wp option delete 'delete_bolt_shipping_and_tax_resources'
wp option delete 'has_initiated_clearing_historic_bolt_resources'
wp option delete 'bolt_load_test'
wp option delete 'woocommerce_bolt_checkout_version'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'routeapp_public_token'
wp option delete 'routeapp_secret_token'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'advanced_woo_discount_rules_load_version'
wp option delete 'enable_woocommerce_extra_shipping_options'
wp option delete 'woocommerce_smart_coupon_apply_before_tax'

# Delete Transients
wp transient delete 'wc_bolt_checkout_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_option_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_option_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_option_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_option_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_cbl_locations_lookup_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_cbl_locations_lookup_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_cbl_locations_lookup_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_cbl_locations_lookup_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_locations'"
