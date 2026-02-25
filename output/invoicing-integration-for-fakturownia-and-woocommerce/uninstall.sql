-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'woocommerce_price_num_decimals', 'devikit_fakturownia_banner_dismissed', 'devikit_fakturownia_banner_remind_later', 'devikit_fakturownia_settings', 'devikit_fakturownia_pro_settings', 'devikit_fakturownia_warehouse_settings', 'devikit_fakturownia_keep_data_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_nip', '_fakturownia_gtu_code', '_fakturownia_pkwiu_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_nip', '_fakturownia_gtu_code', '_fakturownia_pkwiu_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_nip', '_fakturownia_gtu_code', '_fakturownia_pkwiu_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_nip', '_fakturownia_gtu_code', '_fakturownia_pkwiu_code');

