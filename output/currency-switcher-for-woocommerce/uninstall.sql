-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmcs_default_currency', 'woocommerce_currency_pos', 'pmcs_currencies', 'pmsc_exchange_rate_update', 'pmsc_exchange_rate_server', 'pmcs_report_admin_currency', 'pmcs_currency_by_ip', 'pmcs_store_data_type', 'pmcs_add_to_menu', 'pmcs_currency_auto_convert', 'pmcs_geoip', 'pmcs_cart_default_currency', 'pmcs_checkout_default_currency', 'pmcs_show_in_menu_location', 'pmcs_show_flag', 'pmcs_show_name', 'pmcs_currencylayer_access_key', 'pmcs_currencylayer_is_paid', 'pmcs_fixer_io_access_key', 'pmcs_fixer_io_is_paid', 'pmcs_openexchangerates_app_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_currency_rate', '_base_currency', '_currency_checkout', '_order_currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('_currency_rate', '_base_currency', '_currency_checkout', '_order_currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('_currency_rate', '_base_currency', '_currency_checkout', '_order_currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_currency_rate', '_base_currency', '_currency_checkout', '_order_currency');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_amount_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_amount_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_amount_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_amount_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_regular_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_regular_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_regular_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_regular_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_sale_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_sale_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_sale_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sale_price_%';

