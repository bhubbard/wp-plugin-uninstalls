-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', '_payeezy_card');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', '_payeezy_card');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', '_payeezy_card');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', '_payeezy_card');

