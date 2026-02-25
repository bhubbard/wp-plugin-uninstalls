-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awocoupon_version', 'awocoupon_db_version', 'woocommerce_currency');

