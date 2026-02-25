-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('honeybadger_the_honeybadger_it_activation_is_done', 'HONEYBADGER_IT_VERSION', 'woocommerce_manage_stock', 'woocommerce_registration_generate_password', 'woocommerce_default_country', 'woocommerce_tax_round_at_subtotal', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_email_header_image', 'woocommerce_email_footer_text', 'woocommerce_email_base_color', 'woocommerce_email_background_color', 'woocommerce_email_body_background_color', 'woocommerce_email_text_color', 'woocommerce_notify_low_stock', 'woocommerce_notify_no_stock', 'woocommerce_stock_email_recipient', 'woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock_amount', 'woocommerce_prices_include_tax', 'woocommerce_hold_stock_minutes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_billing_address_index', '_shipping_address_index', '_cart_hash', '_honeybadger_split_from', '_honeybadger_split_in', '_transaction_id', '_customer_user', '_low_stock_amount', '_regular_price', '_price', '_sale_price', '_manage_stock', '_stock_status', '_stock', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_billing_address_index', '_shipping_address_index', '_cart_hash', '_honeybadger_split_from', '_honeybadger_split_in', '_transaction_id', '_customer_user', '_low_stock_amount', '_regular_price', '_price', '_sale_price', '_manage_stock', '_stock_status', '_stock', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_billing_address_index', '_shipping_address_index', '_cart_hash', '_honeybadger_split_from', '_honeybadger_split_in', '_transaction_id', '_customer_user', '_low_stock_amount', '_regular_price', '_price', '_sale_price', '_manage_stock', '_stock_status', '_stock', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_billing_address_index', '_shipping_address_index', '_cart_hash', '_honeybadger_split_from', '_honeybadger_split_in', '_transaction_id', '_customer_user', '_low_stock_amount', '_regular_price', '_price', '_sale_price', '_manage_stock', '_stock_status', '_stock', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

