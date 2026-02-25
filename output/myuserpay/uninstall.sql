-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pay_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_inline_mup_transaction_id', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_inline_mup_transaction_id', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_inline_mup_transaction_id', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_inline_mup_transaction_id', '_price');

