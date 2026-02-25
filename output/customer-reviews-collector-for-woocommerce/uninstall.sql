-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_from_address', 'woocommerce_email_from_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_user');

