#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_custom_order_numbers_version'
wp option delete 'alg_custom_order_numbers_show_admin_notice'
wp option delete 'alg_custom_order_numbers_no_meta_admin_notice'
wp option delete 'alg_wc_custom_order_numbers_hide_tab_for_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset_usage_tracking'"
wp option delete 'con_lite_allow_tracking'
wp option delete 'alg_wc_custom_order_numbers_enabled'
wp option delete 'alg_wc_custom_order_numbers_order_tracking_enabled'
wp option delete 'alg_custom_order_numbers_new_order_time'
wp option delete 'alg_custom_order_numbers_update_database'
wp option delete 'alg_custom_order_number_old_orders_to_update_meta_key'
wp option delete 'alg_custom_order_numbers_update_meta_key_in_database'
wp option delete 'alg_custom_order_numbers_time_of_update_now'
wp option delete 'alg_custom_order_numbers_meta_key_time_of_update_now'
wp option delete 'alg_custom_order_numbers_no_old_orders_to_update'
wp option delete 'alg_wc_custom_order_numbers_prefix'
wp option delete 'alg_wc_custom_order_numbers_date_prefix'
wp option delete 'woocommerce_version'
wp option delete 'alg_custom_order_number_no_old_con_without_meta_key'
wp option delete 'alg_custom_order_number_no_old_orders_to_update_meta_key'
wp option delete 'alg_custom_order_numbers_success_notice'
wp option delete 'alg_custom_order_numbers_success_notice_for_meta_key'
wp option delete 'alg_wc_custom_order_numbers_prefix_suffix_changed'
wp option delete 'alg_wc_custom_order_numbers_settings_to_apply'
wp option delete 'alg_wc_custom_order_numbers_settings_to_apply_from_date'
wp option delete 'alg_wc_custom_order_numbers_settings_to_apply_from_order_id'
wp option delete 'alg_wc_custom_order_numbers_counter_reset_enabled'
wp option delete 'alg_wc_custom_order_numbers_counter_previous_order_date'
wp option delete 'alg_wc_custom_order_numbers_counter_reset_counter_value'
wp option delete 'alg_wc_custom_order_numbers_hide_menu_for_roles'
wp option delete 'alg_wc_custom_order_numbers_counter'
wp option delete 'alg_wc_custom_order_numbers_counter_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'alg_wc_custom_order_numbers_min_width'
wp option delete 'alg_wc_custom_order_numbers_suffix'
wp option delete 'alg_wc_custom_order_numbers_date_suffix'
wp option delete 'alg_wc_custom_order_numbers_template'
wp option delete 'alg_wc_custom_order_numbers_search_by_custom_number_enabled'
wp option delete 'alg_wc_custom_order_numbers_manual_enabled'
wp option delete 'alg_wc_custom_order_numbers__reset'
wp option delete 'edd_license_key_con'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_custom_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_custom_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_custom_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_custom_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_full_custom_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_full_custom_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_full_custom_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_full_custom_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_custom_order_number_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_custom_order_number_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_custom_order_number_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_custom_order_number_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_custom_order_number_meta_key_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_custom_order_number_meta_key_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_custom_order_number_meta_key_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_custom_order_number_meta_key_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_orders_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_orders_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_orders_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_orders_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'new_orders_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'new_orders_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'new_orders_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'new_orders_updated'"
