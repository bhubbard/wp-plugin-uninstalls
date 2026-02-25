#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp option delete 'wpjup_wc_maximum_products_per_user_plugin_enabled'
wp option delete 'alg_wc_mppu_use_user_roles'
wp option delete 'alg_wc_mppu_block_guests'
wp option delete 'alg_wc_mppu_get_lifetime_from_totals'
wp option delete 'alg_wc_mppu_cart_notice'
wp option delete 'wpjup_wc_maximum_products_per_user_stop_from_seeing_checkout'
wp option delete 'alg_wc_mppu_validation_actions'
wp option delete 'alg_wc_mppu_validate_on_add_to_cart'
wp option delete 'alg_wc_mppu_permanent_notice'
wp option delete 'alg_wc_mppu_count_by_current_payment_method'
wp option delete 'alg_wc_mppu_set_qty_field_max_attr'
wp option delete 'alg_wc_mppu_disable_product_purchase_by_limit'
wp option delete 'alg_wc_mppu_date_range_origin_date'
wp option delete 'alg_wc_mppu_time_offset'
wp option delete 'alg_wc_mppu_current_time_offset'
wp option delete 'alg_wc_mppu_bkg_process_send_email'
wp option delete 'alg_wc_mppu_bkg_process_email_to'
wp option delete 'alg_wc_mppu_hide_guest_blocked_products'
wp option delete 'alg_wc_mppu_user_roles_max_qty'
wp option delete 'wpjup_wc_maximum_products_per_user_global_max_qty'
wp option delete 'alg_wc_mppu_block_guests_method'
wp option delete 'alg_wc_mppu_block_guests_message'
wp option delete 'alg_wc_mppu_time_func'
wp option delete 'alg_wc_mppu_date_range_custom'
wp option delete 'alg_wc_mppu_date_range_custom_unit'
wp option delete 'alg_wc_mppu_date_range_fixed_date'
wp option delete 'alg_wc_mppu_date_range'
wp option delete 'alg_wc_mppu_cart_notice_type'
wp option delete 'wpjup_wc_maximum_products_per_term_message'
wp option delete 'wpjup_wc_maximum_products_per_user_message'
wp option delete 'alg_wc_mppu_exclude_products'
wp option delete 'wpjup_wc_maximum_products_per_user_global_enabled'
wp option delete 'alg_wc_mppu_formula_enabled'
wp option delete 'alg_wc_mppu_use_variations'
wp option delete 'alg_wc_mppu_payment_gateways'
wp option delete 'alg_wc_mppu_multiple_notices'
wp option delete 'alg_wc_mppu_enabled_user_roles'
wp option delete 'alg_wc_mppu_formula'
wp option delete 'alg_wc_mppu_order_status'
wp option delete 'alg_wc_mppu_order_status_delete'
wp option delete 'alg_wc_mppu_duplicate_product'
wp option delete 'alg_wc_mppu_tool_delete_using_async_request'
wp option delete 'alg_wc_mppu_tool_recalculate_debug'
wp option delete 'alg_wc_mppu_tool_recalculate'
wp option delete 'alg_wc_mppu_tool_delete_recalculate'
wp option delete 'alg_wc_mppu_tool_delete'
wp option delete 'alg_wc_mppu_tool_recalculate_date_range'
wp option delete 'alg_wc_mppu_tool_recalculate_block_size'
wp option delete 'alg_wc_mppu_tool_recalculate_time_limit'
wp option delete 'alg_wc_mppu_tool_recalculate_loop_func'
wp option delete 'alg_wc_mppu_bkg_process_min_amount'
wp option delete 'alg_wc_mppu_mode'
wp option delete 'alg_wc_mppu_multi_language'
wp option delete 'alg_wc_mppu_multi_language_use_main_prod_id_on_checking_limits'
wp option delete 'alg_wc_mppu_my_account_enabled'
wp option delete 'alg_wc_mppu_flush_rewrite_rules'
wp option delete 'alg_wc_mppu_my_account_tab_id'
wp option delete 'alg_wc_mppu_my_account_tab_icon'
wp option delete 'alg_wc_mppu_my_account_tab_title'
wp option delete 'alg_wc_mppu_my_account_tab_content'
wp option delete 'alg_wc_mppu_permanent_notice_message'
wp option delete 'alg_wc_mppu_permanent_notice_condition'
wp option delete 'alg_wc_mppu_user_export_sep'
wp option delete 'alg_wc_mppu_user_export_meta'
wp option delete 'alg_wc_mppu_user_export_merge_user'
wp option delete 'alg_wc_mppu_user_export_data_sep'
wp option delete 'alg_wc_mppu_editable_sales_data_auto_update_terms_data'
wp option delete 'alg_wc_mppu_editable_sales_data_auto_update_lifetime'
wp option delete 'alg_wc_mppu_editable_sales_data_show_variations'
wp option delete 'alg_wc_mppu_editable_sales_data_using_ajax'
wp option delete 'alg_wc_mppu_date_range_week_starts_on'
wp option delete 'alg_wc_mppu_version'
wp option delete 'alg_wc_mppu_orders_above_limits_change_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_mppu_user_roles_max_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_mppu_user_roles_max_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_mppu_user_roles_max_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_mppu_user_roles_max_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpjup_wc_maximum_products_per_user_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpjup_wc_maximum_products_per_user_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpjup_wc_maximum_products_per_user_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpjup_wc_maximum_products_per_user_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_mppu_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_mppu_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_mppu_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_mppu_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpjup_wc_mppu_block_guests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpjup_wc_mppu_block_guests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpjup_wc_mppu_block_guests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpjup_wc_mppu_block_guests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_mppu_use_variations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_mppu_use_variations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_mppu_use_variations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_mppu_use_variations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_mppu_delete_user_sales_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_mppu_delete_user_sales_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_mppu_delete_user_sales_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_mppu_delete_user_sales_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_mppu_profile_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_mppu_profile_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_mppu_profile_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_mppu_profile_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_mppu_orders_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_mppu_orders_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_mppu_orders_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_mppu_orders_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_mppu_totals_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_mppu_totals_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_mppu_totals_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_mppu_totals_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
