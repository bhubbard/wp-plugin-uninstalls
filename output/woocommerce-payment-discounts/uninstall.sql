-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payment_discounts_version', 'woocommerce_payment_discounts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method_title');

