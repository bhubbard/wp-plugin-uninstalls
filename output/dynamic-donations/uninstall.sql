-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dydo_options', 'woocommerce_currency', 'dydo_woocommerce_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dydo_stripe_customer_id', 'first_name', 'last_name', '_visibility', '_stock_status', '_sold_individually', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('dydo_stripe_customer_id', 'first_name', 'last_name', '_visibility', '_stock_status', '_sold_individually', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('dydo_stripe_customer_id', 'first_name', 'last_name', '_visibility', '_stock_status', '_sold_individually', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dydo_stripe_customer_id', 'first_name', 'last_name', '_visibility', '_stock_status', '_sold_individually', '_price');

