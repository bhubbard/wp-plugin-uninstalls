-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_order_wompi_Hash', '_wc_order_wompi_cadena', '_wc_order_wompi_StatusHash', '_wc_order_wompi_transactionid', '_wc_order_wompi_authcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_order_wompi_Hash', '_wc_order_wompi_cadena', '_wc_order_wompi_StatusHash', '_wc_order_wompi_transactionid', '_wc_order_wompi_authcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_order_wompi_Hash', '_wc_order_wompi_cadena', '_wc_order_wompi_StatusHash', '_wc_order_wompi_transactionid', '_wc_order_wompi_authcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_order_wompi_Hash', '_wc_order_wompi_cadena', '_wc_order_wompi_StatusHash', '_wc_order_wompi_transactionid', '_wc_order_wompi_authcode');

