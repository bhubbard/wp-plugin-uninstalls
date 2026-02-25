-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wcmp-cointopay-payments_settings', 'wcmp_payment_settings_name', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('transaction_mode', 'cointopay_alt_coin', '_commissions_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('transaction_mode', 'cointopay_alt_coin', '_commissions_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('transaction_mode', 'cointopay_alt_coin', '_commissions_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('transaction_mode', 'cointopay_alt_coin', '_commissions_processed');

