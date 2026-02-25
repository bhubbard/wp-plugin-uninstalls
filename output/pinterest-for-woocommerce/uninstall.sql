-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'woocommerce_manage_stock', 'woocommerce_allow_tracking', 'woocommerce_cart_redirect_after_add', 'pinterest_for_woocommerce', 'pinterest_for_woocommerce_data', 'pinterest_for_woocommerce_marketing_notifications_init_timestamp', 'pinterest_for_woocommerce_account_connection_timestamp', 'pinterest-for-woocommerce-update-version', 'compat_checker_wc_versions');
DELETE FROM wp_options WHERE option_name LIKE '%status';
DELETE FROM wp_options WHERE option_name LIKE '%current_index';
DELETE FROM wp_options WHERE option_name LIKE '%last_activity';
DELETE FROM wp_options WHERE option_name LIKE '%product_count';
DELETE FROM wp_options WHERE option_name LIKE '%error_message';
DELETE FROM wp_options WHERE option_name LIKE '%_currencies_list';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

