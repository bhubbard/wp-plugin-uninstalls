-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paymennt_card_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method_title', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method_title', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method_title', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method_title', '_payment_method');

