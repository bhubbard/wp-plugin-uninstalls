-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'woocommerce_price_num_decimals', 'devikit_wfirma_banner_dismissed', 'devikit_wfirma_banner_remind_later', 'devikit_wfirma_settings', 'devikit_wfirma_pro_settings', 'devikit_wfirma_warehouse_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_nip', '_billing_want_invoice', 'billing_nip', '_wfirma_unit_of_measure', '_wfirma_lump_sum', '_wfirma_kod_produktu');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_nip', '_billing_want_invoice', 'billing_nip', '_wfirma_unit_of_measure', '_wfirma_lump_sum', '_wfirma_kod_produktu');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_nip', '_billing_want_invoice', 'billing_nip', '_wfirma_unit_of_measure', '_wfirma_lump_sum', '_wfirma_kod_produktu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_nip', '_billing_want_invoice', 'billing_nip', '_wfirma_unit_of_measure', '_wfirma_lump_sum', '_wfirma_kod_produktu');

