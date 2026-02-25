-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('finachub_mpesa_checkout_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_finachub_mpesa_checkout_request_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_finachub_mpesa_checkout_request_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_finachub_mpesa_checkout_request_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_finachub_mpesa_checkout_request_id');

