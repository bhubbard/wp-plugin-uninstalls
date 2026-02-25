-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paytrail_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing', '_payment_provider', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing', '_payment_provider', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing', '_payment_provider', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing', '_payment_provider', '_payment_method');

