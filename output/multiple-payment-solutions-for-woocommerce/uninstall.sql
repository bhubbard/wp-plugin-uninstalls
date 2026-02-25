-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'webhook_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', '_insta_paymrnt_id', '_ptm_authorization_id', '_payu_authorization_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', '_insta_paymrnt_id', '_ptm_authorization_id', '_payu_authorization_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', '_insta_paymrnt_id', '_ptm_authorization_id', '_payu_authorization_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', '_insta_paymrnt_id', '_ptm_authorization_id', '_payu_authorization_id');

