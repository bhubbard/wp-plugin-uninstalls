#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'orderable_dismissed_notice_%'"
wp option delete 'orderable_ask_review'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'orderable_settings'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'orderable_opt_in'
wp option delete '_orderable_db_version'
wp option delete '_orderable_main_location_store_general_services_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_asap_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_open_hours_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_service_hours_pickup_same_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_lead_time_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_preorder_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_calculation_method_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_service_hours_delivery_settings_to_migrate'
wp option delete '_orderable_main_location_store_general_service_hours_pickup_settings_to_migrate'
wp option delete 'wc_points_rewards_variable_product_message'
wp option delete 'wc_points_rewards_single_product_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_onboard_dismiss_modal'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_onboard_save_modal'"
wp option delete 'orderable_version'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'orderable_creating_database'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
