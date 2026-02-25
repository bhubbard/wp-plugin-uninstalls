-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'infixs_pingo_notify_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('has_sub_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('has_sub_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('has_sub_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('has_sub_order');

