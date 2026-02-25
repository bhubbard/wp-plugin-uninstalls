-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sales_countdown_timer_params', 'villatheme_hide_admin_toolbar', '_sales_countdown_timer_demo_product_init', 'wc_products_onsale', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_sctr_update_variable_price_start_sale_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_var_prices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_ctr_select_countdown_timer', '_price', '_sale_price_old_woo_ctr', '_woo_ctr_product_sold_quantity', '_sale_price_dates_from', '_sale_price_dates_to', '_sale_price_times_from', '_sale_price_times_to', '_woo_ctr_enable_progress_bar', '_woo_ctr_progress_bar_goal', '_woo_ctr_progress_bar_initial');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_ctr_select_countdown_timer', '_price', '_sale_price_old_woo_ctr', '_woo_ctr_product_sold_quantity', '_sale_price_dates_from', '_sale_price_dates_to', '_sale_price_times_from', '_sale_price_times_to', '_woo_ctr_enable_progress_bar', '_woo_ctr_progress_bar_goal', '_woo_ctr_progress_bar_initial');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_ctr_select_countdown_timer', '_price', '_sale_price_old_woo_ctr', '_woo_ctr_product_sold_quantity', '_sale_price_dates_from', '_sale_price_dates_to', '_sale_price_times_from', '_sale_price_times_to', '_woo_ctr_enable_progress_bar', '_woo_ctr_progress_bar_goal', '_woo_ctr_progress_bar_initial');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_ctr_select_countdown_timer', '_price', '_sale_price_old_woo_ctr', '_woo_ctr_product_sold_quantity', '_sale_price_dates_from', '_sale_price_dates_to', '_sale_price_times_from', '_sale_price_times_to', '_woo_ctr_enable_progress_bar', '_woo_ctr_progress_bar_goal', '_woo_ctr_progress_bar_initial');

