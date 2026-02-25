-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('billplz_edd_listener');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billplz_id', 'billplz_api_key', 'billplz_paid');
DELETE FROM wp_usermeta WHERE meta_key IN ('billplz_id', 'billplz_api_key', 'billplz_paid');
DELETE FROM wp_termmeta WHERE meta_key IN ('billplz_id', 'billplz_api_key', 'billplz_paid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billplz_id', 'billplz_api_key', 'billplz_paid');

