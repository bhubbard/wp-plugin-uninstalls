#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_pq_admin_columns_enabled'
wp option delete 'alg_wc_pq_admin_columns'
wp option delete 'alg_wc_pq_enabled'
wp option delete 'alg_wc_pq_disable_by_order_per_user'
wp option delete 'alg_wc_pq_disable_urls'
wp option delete 'alg_wc_pq_disable_urls_excluded_pids'
wp option delete 'alg_wc_pq_disable_by_category'
wp option delete 'alg_wc_pq_disable_category_excluded_pids'
wp option delete 'alg_wc_pq_max_section_enabled'
wp option delete 'alg_wc_pq_min_section_enabled'
wp option delete 'alg_wc_pq_step_section_enabled'
wp option delete 'alg_wc_pq_exact_qty_allowed_section_enabled'
wp option delete 'alg_wc_pq_exact_qty_disallowed_section_enabled'
wp option delete 'alg_wc_pq_validate_on_checkout'
wp option delete 'alg_wc_pq_stop_from_seeing_checkout'
wp option delete 'alg_wc_pq_force_on_loop'
wp option delete 'alg_wc_pq_decimal_quantities_enabled'
wp option delete 'alg_wc_pq_all_sold_individually_enabled'
wp option delete 'alg_wc_pq_qty_input_style'
wp option delete 'alg_wc_pq_qty_hide_update_cart'
wp option delete 'alg_wc_pq_add_to_cart_validation'
wp option delete 'alg_wc_pq_round_on_add_to_cart'
wp option delete 'alg_wc_pq_qty_dropdown'
wp option delete 'alg_wc_pq_replace_woocommerce_quantity_field'
wp option delete 'alg_wc_pq_qty_price_by_qty_enabled'
wp option delete 'alg_wc_pq_save_qty_in_order_item_meta'
wp option delete 'alg_wc_pq_qty_price_unit_enabled'
wp option delete 'alg_wc_pq_qty_price_unit_category_enabled'
wp option delete 'alg_wc_pq_qty_price_unit_product_enabled'
wp option delete 'alg_wc_pq_qty_price_unit_show_archive_enabled'
wp option delete 'alg_wc_pq_qty_price_by_qty_position'
wp option delete 'alg_wc_pq_qty_price_by_qty_qty_archive_enabled'
wp option delete 'alg_wc_pq_add_quantity_archive_enabled'
wp option delete 'alg_wc_pq_force_on_single'
wp option delete 'alg_wc_pq_decimal_quantities_admin_order_enabled'
wp option delete 'alg_wc_pq_min_per_attribute_item_quantity'
wp option delete 'alg_wc_pq_max_per_attribute_item_quantity'
wp option delete 'alg_wc_pq_step_per_attribute_item_quantity'
wp option delete 'alg_wc_pq_variation_change'
wp option delete 'alg_wc_pq_qty_dropdown_label_template_is_per_product'
wp option delete 'alg_wc_pq_qty_dropdown_label_template_singular'
wp option delete 'alg_wc_pq_qty_dropdown_label_template_plural'
wp option delete 'alg_wc_pq_price_by_qty_enable_per_category'
wp option delete 'alg_wc_pq_price_by_qty_per_category_categories'
wp option delete 'alg_wc_pq_qty_dropdown_enable_per_category'
wp option delete 'alg_wc_pq_qty_dropdown_per_category_categories'
wp option delete 'alg_wc_pq_qty_price_unit'
wp option delete 'alg_wc_pq_qty_price_unit_email_order_item_enabled'
wp option delete 'alg_wc_pq_save_qty_in_order_item_meta_key'
wp option delete 'alg_wc_pq_qty_dropdown_qty_archive_enabled'
wp option delete 'alg_wc_pq_qty_dropdown_disable_dropdown_on_cart'
wp option delete 'alg_wc_pq_advance_wpc_product_bundle'
wp option delete 'alg_wc_pq_sum_variations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_section_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_per_cat_item_quantity_per_product'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cat_message'"
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'alg_wc_pq_min_hide_qty_input_on_product_page_if_stock_matches_min'
wp option delete 'alg_wc_pq_min_hide_qty_input_on_cart_if_stock_matches_min'
wp option delete 'alg_wc_pq_min_hide_qty_input_on_loop_if_stock_matches_min'
wp option delete 'alg_wc_pq_force_cart_min_enabled'
wp option delete 'alg_wc_pq_step'
wp option delete 'alg_wc_pq_advance_wc_block_api'
wp option delete 'alg_wc_pq_qty_price_by_attribute_qty_unit_input_selected'
wp option delete 'alg_wc_pq_qty_price_by_qty_unit_singular'
wp option delete 'alg_wc_pq_qty_price_by_qty_unit_plural'
wp option delete 'alg_wc_pq_qty_price_by_qty_unit_input_enabled'
wp option delete 'alg_wc_pq_qty_price_by_cat_qty_unit_input_enabled'
wp option delete 'alg_wc_pq_qty_price_by_attribute_qty_unit_input_enabled'
wp option delete 'alg_wc_pq_qty_price_by_qty_template'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_pq_default_section_enabled'
wp option delete 'alg_wc_pq_default_per_item_quantity'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_per_item_quantity'"
wp option delete 'alg_wc_pq_min_hide_add_to_cart_less_stock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cart_total_quantity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_per_attribute_item_quantity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_per_attribute_message'"
wp option delete 'alg_wc_pq_cart_notice_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pq_exact_qty_%'"
wp option delete 'alg_wc_pq_exact_subset_sum_allowed_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attribute_item_message'"
wp option delete 'alg_wc_pq_add_to_cart_validation_step_auto_correct'
wp option delete 'alg_wc_pq_step_cart_total_quantity'
wp option delete 'alg_wc_pq_qty_dropdown_thousand_separator_enabled'
wp option delete 'alg_wc_pq_qty_dropdown_thousand_separator'
wp option delete 'alg_wc_pq_step_per_product_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_per_item_quantity_per_product'"
wp option delete 'alg_wc_pq_step_per_item_quantity_per_product_less2x'
wp option delete 'alg_wc_pq_cart_notice_enabled'
wp option delete 'alg_wc_pq_step_cart_total_message'
wp option delete 'alg_wc_pq_max_cart_total_message'
wp option delete 'alg_wc_pq_min_cart_total_message'
wp option delete 'alg_wc_pq_max_per_item_message'
wp option delete 'alg_wc_pq_min_per_item_message'
wp option delete 'alg_wc_pq_step_message'
wp option delete 'alg_wc_pq_exact_qty_allowed_message'
wp option delete 'alg_wc_pq_exact_qty_disallowed_message'
wp option delete 'alg_wc_pq_exact_cart_total_quantity'
wp option delete 'alg_wc_pq_exact_cart_total_quantity_enabled'
wp option delete 'alg_wc_pq_qty_info_on_single_product'
wp option delete 'alg_wc_pq_qty_info_on_single_product_custom_hook'
wp option delete 'alg_wc_pq_qty_info_on_single_product_custom_hook_name'
wp option delete 'alg_wc_pq_qty_info_on_single_product_custom_hook_priority'
wp option delete 'alg_wc_pq_qty_info_on_loop'
wp option delete 'alg_wc_pq_exact_cart_total_message'
wp option delete 'alg_wc_pq_qty_info_on_single_product_content'
wp option delete 'alg_wc_pq_qty_info_on_loop_content'
wp option delete 'alg_wc_pq_qty_info_enable_per_category'
wp option delete 'alg_wc_pq_qty_info_per_category_categories'
wp option delete 'alg_wc_pq_variation_do_load_all'
wp option delete 'alg_wc_pq_qty_dropdown_max_value_fallback'
wp option delete 'alg_wc_pq_qty_price_by_qty_variation_price'
wp option delete 'alg_wc_pq_false_ajax_async'
wp option delete 'alg_wc_pq_qty_price_by_qty_enabled_variable'
wp option delete 'alg_wc_pq_force_js_check_step_periodically'
wp option delete 'alg_wc_pq_force_js_check_step'
wp option delete 'alg_wc_pq_force_js_check_period_ms'
wp option delete 'alg_wc_pq_force_js_check_min_max_periodically'
wp option delete 'alg_wc_pq_force_js_check_min_max'
wp option delete 'alg_wc_pq_round_with_js'
wp option delete 'alg_wc_pq_qty_dropdown_search_filter'
wp option delete 'alg_wc_pq_step_per_item_quantity_allow_all_remaining'
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_pq_exact_qty_allowed_per_attribute_item_quantity'
wp option delete 'alg_wc_pq_exact_qty_allowed_per_attributes_selected'
wp option delete 'alg_wc_pq_min_per_attribute_selected'
wp option delete 'alg_wc_pq_max_per_attribute_selected'
wp option delete 'alg_wc_pq_step_per_attribute_selected'
wp option delete 'alg_wc_pq_min_per_cat_item_quantity_per_product'
wp option delete 'alg_wc_pq_max_per_cat_item_quantity_per_product'
wp option delete 'alg_wc_pq_step_per_cat_item_quantity_per_product'
wp option delete 'alg_wc_pq_default_per_cat_item_quantity_per_product'
wp option delete 'alg_wc_pq_exact_qty_allowed_per_cat_item_quantity_per_product'
wp option delete 'alg_wc_pq_exact_qty_disallowed_per_cat_item_quantity_per_product'
wp option delete 'alg_wc_pq_min_per_item_quantity_per_product_allow_selling_below_stock'
wp option delete 'alg_wc_pq_save_hook'
wp option delete 'alg_wc_pq_qty_price_by_qty_unit_label_template_singular'
wp option delete 'alg_wc_pq_qty_price_by_qty_unit_label_template_plural'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'alg_wc_pq_qty_dropdown_template_before'
wp option delete 'alg_wc_pq_qty_dropdown_template_after'
wp option delete 'alg_wc_pq_version'

# Delete Transients
wp transient delete 'alg_wc_pq_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_pq_closedate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_pq_closedate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_pq_closedate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_pq_closedate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_product_min_quantity_to_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_product_min_quantity_to_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_product_min_quantity_to_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_product_min_quantity_to_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_product_max_quantity_to_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_product_max_quantity_to_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_product_max_quantity_to_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_product_max_quantity_to_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_product_step_quantity_to_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_product_step_quantity_to_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_product_step_quantity_to_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_product_step_quantity_to_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_product_default_quantity_to_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_product_default_quantity_to_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_product_default_quantity_to_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_product_default_quantity_to_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_product_exact_qty_allowed_quantity_to_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_product_exact_qty_allowed_quantity_to_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_product_exact_qty_allowed_quantity_to_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_product_exact_qty_allowed_quantity_to_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_exact_qty_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_exact_qty_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_exact_qty_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_exact_qty_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_plural'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_plural'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_plural'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_qty_dropdown_label_template_plural'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_min_allow_selling_below_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_min_allow_selling_below_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_min_allow_selling_below_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_min_allow_selling_below_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_price_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_price_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_price_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_price_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_plural'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_plural'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_plural'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pq_qty_price_by_qty_unit_label_template_plural'"
