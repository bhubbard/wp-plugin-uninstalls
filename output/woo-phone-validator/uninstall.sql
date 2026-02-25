-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

