-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('girocheckout_updates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_girocheckout_reference', '_girocheckout_reference_capture');
DELETE FROM wp_usermeta WHERE meta_key IN ('_girocheckout_reference', '_girocheckout_reference_capture');
DELETE FROM wp_termmeta WHERE meta_key IN ('_girocheckout_reference', '_girocheckout_reference_capture');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_girocheckout_reference', '_girocheckout_reference_capture');

