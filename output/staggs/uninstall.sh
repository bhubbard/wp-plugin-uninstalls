#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgg_acf_pro_active'
wp option delete 'staggs_admin_notices'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete '_sgg_configurator_smart_nodes_lookup'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'ywraq_quote_my_account_hide_price_new_quote'
wp option delete 'ywraq_hide_price'
wp option delete 'woocommerce_weight_unit'
wp option delete 'qlwcdc_add_to_cart_redirect_page'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'carbon_custom_sidebars'

# Delete Transients
wp transient delete 'staggs_total_results'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_staggs_analytics_order_%' OR option_name LIKE '_site_transient_staggs_analytics_order_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'staggs_attribute_values'
wp transient delete 'staggs_attribute_conditional_values'
wp transient delete 'staggs_attribute_conditional_inputs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_staggs_attribute_conditional_labels_%' OR option_name LIKE '_site_transient_staggs_attribute_conditional_labels_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sgg_formatted_attribute_%' OR option_name LIKE '_site_transient_sgg_formatted_attribute_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_staggs_attribute_values_%' OR option_name LIKE '_site_transient_staggs_attribute_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_staggs_attribute_conditional_values_%' OR option_name LIKE '_site_transient_staggs_attribute_conditional_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_staggs_attribute_conditional_inputs_%' OR option_name LIKE '_site_transient_staggs_attribute_conditional_inputs_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sgg_product_configurator_theme_id_%' OR option_name LIKE '_site_transient_sgg_product_configurator_theme_id_%'"
wp transient delete 'staggs_simple_product_list'
wp transient delete 'staggs_configurable_product_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sgg_configurator_page_template_%' OR option_name LIKE '_site_transient_sgg_configurator_page_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sgg_configurator_view_layout_%' OR option_name LIKE '_site_transient_sgg_configurator_view_layout_%'"
wp transient delete 'staggs_product_tabs'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'staggs_cleanup_garbage_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_configurable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_configurable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_configurable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_configurable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgg_configurator_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgg_configurator_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgg_configurator_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgg_configurator_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sgg_configurator_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sgg_configurator_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sgg_configurator_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sgg_configurator_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
