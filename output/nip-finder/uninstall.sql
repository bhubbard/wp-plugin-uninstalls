-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nip_finder_api_key', 'nip_finder_subscription_type', 'nip_finder_getting_nip', 'nip_finder_getting_postal_codes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_nip');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_nip');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_nip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_nip');

