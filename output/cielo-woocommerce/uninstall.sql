-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_cielo_version', 'woocommerce_cielo_settings', 'woocommerce_cielo_credit_settings', 'woocommerce_cielo_debit_settings', 'woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', '_wc_cielo_card_brand', '_wc_cielo_installments');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', '_wc_cielo_card_brand', '_wc_cielo_installments');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', '_wc_cielo_card_brand', '_wc_cielo_installments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', '_wc_cielo_card_brand', '_wc_cielo_installments');

