-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout', 'sagepay_server_next_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Status', 'StatusDetail', 'VPSTxId', 'CAVV', 'SecurityKey', 'TxAuthNo', 'AVSCV2', 'AddressResult', 'PostCodeResult', 'CV2Result', '3DSecureStatus', 'VendorTxCode');
DELETE FROM wp_usermeta WHERE meta_key IN ('Status', 'StatusDetail', 'VPSTxId', 'CAVV', 'SecurityKey', 'TxAuthNo', 'AVSCV2', 'AddressResult', 'PostCodeResult', 'CV2Result', '3DSecureStatus', 'VendorTxCode');
DELETE FROM wp_termmeta WHERE meta_key IN ('Status', 'StatusDetail', 'VPSTxId', 'CAVV', 'SecurityKey', 'TxAuthNo', 'AVSCV2', 'AddressResult', 'PostCodeResult', 'CV2Result', '3DSecureStatus', 'VendorTxCode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Status', 'StatusDetail', 'VPSTxId', 'CAVV', 'SecurityKey', 'TxAuthNo', 'AVSCV2', 'AddressResult', 'PostCodeResult', 'CV2Result', '3DSecureStatus', 'VendorTxCode');

