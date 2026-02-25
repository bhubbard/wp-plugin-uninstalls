-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_claim_gst');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gstin', 'gstin_holder_name', 'gstin_holder_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('gstin', 'gstin_holder_name', 'gstin_holder_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('gstin', 'gstin_holder_name', 'gstin_holder_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gstin', 'gstin_holder_name', 'gstin_holder_address');

