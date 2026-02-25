-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_easytransac_settings', 'woocommerce_easytransac-sdd_settings', 'woocommerce_easytransac-paybybank_settings', 'woocommerce_easytransac-unified_settings', 'woocommerce_hold_stock_minutes', 'woocommerce_manage_stock');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'et_req_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easytransac-clientid', 'ET_RequestId', 'ET_Tid', 'vat_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('easytransac-clientid', 'ET_RequestId', 'ET_Tid', 'vat_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('easytransac-clientid', 'ET_RequestId', 'ET_Tid', 'vat_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easytransac-clientid', 'ET_RequestId', 'ET_Tid', 'vat_number');

