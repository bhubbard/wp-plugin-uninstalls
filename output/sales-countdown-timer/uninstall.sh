#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sales_countdown_timer_params'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete '_sales_countdown_timer_demo_product_init'
wp transient delete 'wc_products_onsale'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_woo_sctr_update_variable_price_start_sale_%' OR option_name LIKE '_site_transient_woo_sctr_update_variable_price_start_sale_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_var_prices_%' OR option_name LIKE '_site_transient_wc_var_prices_%'"
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ctr_select_countdown_timer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ctr_select_countdown_timer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ctr_select_countdown_timer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ctr_select_countdown_timer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_old_woo_ctr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_old_woo_ctr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_old_woo_ctr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_old_woo_ctr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ctr_product_sold_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ctr_product_sold_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ctr_product_sold_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ctr_product_sold_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_times_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_times_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_times_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_times_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_times_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_times_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_times_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_times_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ctr_enable_progress_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ctr_enable_progress_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ctr_enable_progress_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ctr_enable_progress_bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ctr_progress_bar_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ctr_progress_bar_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ctr_progress_bar_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ctr_progress_bar_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ctr_progress_bar_initial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ctr_progress_bar_initial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ctr_progress_bar_initial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ctr_progress_bar_initial'"
