-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_dpago_response', 'page_pagodigital_response');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('commerce_reference', 'transactionid', '_order_currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('commerce_reference', 'transactionid', '_order_currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('commerce_reference', 'transactionid', '_order_currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('commerce_reference', 'transactionid', '_order_currency');

