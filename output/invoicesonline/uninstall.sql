-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('io_api_username', 'io_api_password', 'io_business_id', 'joi_sync_enabled', 'joi_sync_interval', 'autoinvoice', 'IORegionalCompanies', 'vatapplies', 'amountsincludevat', 'voucherchecktag', 'checkcredits', 'vouchercheck', 'regionalCompanies', 'ClientID');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery', 'io_proforma_invoice', 'ClientID', 'io_client_id', 'iostatus', 'io_cart_total', '_price', 'io_ignore_notice', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery', 'io_proforma_invoice', 'ClientID', 'io_client_id', 'iostatus', 'io_cart_total', '_price', 'io_ignore_notice', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery', 'io_proforma_invoice', 'ClientID', 'io_client_id', 'iostatus', 'io_cart_total', '_price', 'io_ignore_notice', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery', 'io_proforma_invoice', 'ClientID', 'io_client_id', 'iostatus', 'io_cart_total', '_price', 'io_ignore_notice', '_payment_method');

