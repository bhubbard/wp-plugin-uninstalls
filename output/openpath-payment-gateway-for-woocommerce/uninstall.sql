-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_force_ssl_checkout', 'fx-admin-notice-openpath-woocommerce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('OpenPath Subscriber ID', 'billing_email', 'Subscriber ID', 'Transaction ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('OpenPath Subscriber ID', 'billing_email', 'Subscriber ID', 'Transaction ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('OpenPath Subscriber ID', 'billing_email', 'Subscriber ID', 'Transaction ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('OpenPath Subscriber ID', 'billing_email', 'Subscriber ID', 'Transaction ID');

