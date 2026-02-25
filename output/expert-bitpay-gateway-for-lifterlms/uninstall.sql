-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitpay_notification');
DELETE FROM wp_options WHERE option_name LIKE 'llms_gateway_exprtzin_bitpay_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bitpay_invoice_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('bitpay_invoice_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('bitpay_invoice_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bitpay_invoice_id');

