#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_cog_costs_decimals'
wp option delete 'alg_wc_cog_allowed_user_roles'
wp option delete 'alg_wc_cog_replace_cog_comma_by_dots'
wp option delete 'alg_wc_cog_products_sanitize_cog_meta'
wp option delete 'alg_wc_cog_cost_and_profit_totals_on_categories_tab'
wp option delete 'alg_wc_cog_cost_and_profit_column_on_categories_tab'
wp option delete 'alg_wc_cog_analytics_orders_individual_costs'
wp option delete 'alg_wc_cog_analytics_orders_cost_profit_totals'
wp option delete 'alg_wc_cog_analytics_orders'
wp option delete 'alg_wc_cog_cost_and_profit_column_on_products_tab'
wp option delete 'alg_wc_cog_cost_and_profit_totals_on_products_tab'
wp option delete 'alg_wc_cog_cost_and_profit_column_on_analytics_revenue'
wp option delete 'alg_wc_cog_cost_and_profit_totals_on_analytics_revenue'
wp option delete 'alg_wc_cog_cost_and_profit_enabled_on_analytics_stock'
wp option delete 'alg_wc_cog_cost_and_profit_column_on_variations_tab'
wp option delete 'alg_wc_cog_cost_and_profit_totals_on_variations_tab'
wp option delete 'alg_wc_cog_product_profit_html_template'
wp option delete 'alg_wc_cog_orders_profit_html_template'
wp option delete 'woocommerce_currency'
wp option delete 'alg_wc_cog_bkg_process_send_email'
wp option delete 'alg_wc_cog_bkg_process_email_to'
wp option delete 'alg_wc_cog_product_cost_field_position'
wp option delete 'alg_wc_cog_edit_order_cost_manually'
wp option delete 'alg_wc_cog_shipping_costs_enabled'
wp option delete 'alg_wc_cog_shipping_use_shipping_instance'
wp option delete 'alg_wc_cog_shipping_costs_fixed'
wp option delete 'alg_wc_cog_shipping_costs_percent'
wp option delete 'alg_wc_cog_order_extra_cost_fixed'
wp option delete 'alg_wc_cog_order_extra_cost_percent'
wp option delete 'alg_wc_cog_order_extra_cost_per_order_handling_fee'
wp option delete 'alg_wc_cog_order_extra_cost_per_order_shipping_fee'
wp option delete 'alg_wc_cog_order_extra_cost_per_order_payment_fee'
wp option delete 'alg_wc_cog_order_extra_cost_percent_total'
wp option delete 'alg_wc_cog_order_count_empty_costs'
wp option delete 'alg_wc_cog_orders_delay_calculations_status'
wp option delete 'alg_wc_cog_orders_item_costs'
wp option delete 'alg_wc_cog_orders_item_handling_fees'
wp option delete 'alg_wc_cog_orders_meta_box'
wp option delete 'alg_wc_cog_orders_admin_notice'
wp option delete 'alg_wc_cog_order_prepopulate_in_ajax'
wp option delete 'alg_wc_cog_order_save_items_ajax'
wp option delete 'alg_wc_cog_order_prepopulate_on_recalculate_order'
wp option delete 'alg_wc_cog_orders_force_on_update'
wp option delete 'alg_wc_cog_orders_force_on_status'
wp option delete 'alg_wc_cog_orders_force_on_new_item'
wp option delete 'alg_wc_cog_orders_columns_cost'
wp option delete 'alg_wc_cog_orders_columns_profit'
wp option delete 'alg_wc_cog_orders_columns_profit_percent'
wp option delete 'alg_wc_cog_orders_columns_profit_margin'
wp option delete 'alg_wc_cog_order_extra_cost_per_order_columns'
wp option delete 'alg_wc_cog_orders_columns_cost_order_status'
wp option delete 'alg_wc_cog_orders_columns_profit_order_status'
wp option delete 'alg_wc_cog_columns_sorting'
wp option delete 'alg_wc_cog_columns_sorting_exclude_empty_lines'
wp option delete 'alg_wc_cog_order_extra_cost_from_meta_as_profit'
wp option delete 'alg_wc_cog_avoid_empty_order_metadata_saving'
wp option delete 'alg_wc_cog_order_taxes_to_profit'
wp option delete 'alg_wc_cog_order_taxes_to_profit_percentage'
wp option delete 'alg_wc_cog_order_fees_to_profit'
wp option delete 'alg_wc_cog_order_fees_to_profit_percentage'
wp option delete 'alg_wc_cog_order_shipping_to_profit'
wp option delete 'alg_wc_cog_order_shipping_to_profit_percentage'
wp option delete 'alg_wc_cog_orders_admin_notice_text'
wp option delete 'alg_wc_cog_orders_force_on_order_meta_update'
wp option delete 'alg_wc_cog_new_order_hooks_for_cost_update'
wp option delete 'alg_wc_cog_shipping_total_percent_calculation'
wp option delete 'alg_wc_cog_shipping_classes_enabled'
wp option delete 'alg_wc_cog_shipping_class_costs_fixed'
wp option delete 'alg_wc_cog_shipping_class_costs_percent'
wp option delete 'alg_wc_cog_shipping_classes_fixed_cost_calculation'
wp option delete 'alg_wc_cog_calculate_qty_excluding_refunds'
wp option delete 'alg_wc_cog_order_refund_calculation_method'
wp option delete 'alg_wc_cog_ignore_item_refund_amount'
wp option delete 'alg_wc_cog_shipping_percent_cost_source'
wp option delete 'alg_wc_cog_net_payment_inclusive_of_tax'
wp option delete 'alg_wc_cog_products_add_stock'
wp option delete 'alg_wc_cog_products_add_stock_empty_cost_action'
wp option delete 'alg_wc_cog_products_add_stock_negative_stock'
wp option delete 'alg_wc_cog_products_add_stock_history_date_order'
wp option delete 'alg_wc_cog_products_add_stock_history_date_format'
wp option delete 'alg_wc_cog_products_add_stock_cost_calculation'
wp option delete 'alg_wc_cog_save_cost_archive_date_format'
wp option delete 'alg_wc_cog_cost_archive_date_order'
wp option delete 'alg_wc_cog_save_cost_archive_mysql_regexp_substr'
wp option delete 'alg_wc_cog_save_cost_archive'
wp option delete 'alg_wc_cog_cost_archive_metabox'
wp option delete 'alg_wc_cog_products_columns_cost'
wp option delete 'alg_wc_cog_products_columns_profit'
wp option delete 'alg_wc_cog_shortcode_product_cost'
wp option delete 'alg_wc_cog_shortcode_product_profit'
wp option delete 'alg_wc_cog_products_columns_width_unit'
wp option delete 'alg_wc_cog_products_columns_cost_width'
wp option delete 'alg_wc_cog_products_columns_profit_width'
wp option delete 'alg_wc_cog_product_export_csv_convert_cost_to_number'
wp option delete 'alg_wc_cog_product_export_csv_dots_and_commas_operation'
wp option delete 'alg_wc_cog_products_get_price_method'
wp option delete 'alg_wc_cog_version'
wp option delete 'alg_wc_cog_calculation_hooks_reset'
wp option delete 'alg_wc_cog_auto_currency_rates'
wp option delete 'alg_wc_cog_currencies'
wp option delete 'alg_wc_cog_currencies_costs_currencies'
wp option delete 'alg_wc_cog_import_tool_cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'alg_wc_cog_bkg_process_min_amount'
wp option delete 'alg_wc_cog_bulk_edit_tool_edit_prices'
wp option delete 'alg_wc_cog_bulk_edit_tool_manage_stock_method'
wp option delete 'alg_wc_cog_import_tool_cron_frequency'
wp option delete 'alg_wc_cog_import_tool_sync_wc_import'
wp option delete 'alg_wc_cog_tool_key'
wp option delete 'alg_wc_cog_tool_key_to'
wp option delete 'alg_wc_cog_import_tool_check_key'
wp option delete 'alg_wc_cog_import_tool_check_value'
wp option delete 'alg_wc_cog_import_tool_display_table'
wp option delete 'alg_wc_cog_bulk_edit_tool_product_types'
wp option delete 'alg_wc_cog_bulk_edit_tool_search_method'
wp option delete 'alg_wc_cog_bulk_edit_tool_edit_tags'
wp option delete 'alg_wc_cog_bulk_edit_tool_profit_on_cost_desc'
wp option delete 'alg_wc_cog_bulk_edit_tool_manage_stock'

# Clear Cron Jobs
wp cron event delete 'alg_wc_cog_currency_rate_update'
wp cron event delete 'alg_wc_cog_run_import_tool'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cog_cost_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cog_cost_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cog_cost_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cog_cost_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cog_profit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cog_profit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cog_profit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cog_profit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cog_profit_percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cog_profit_percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cog_profit_percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cog_profit_percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cog_profit_margin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cog_profit_margin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cog_profit_margin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cog_profit_margin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cog_handling_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cog_handling_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cog_handling_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cog_handling_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
