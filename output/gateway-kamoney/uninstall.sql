-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kamoney_redirect', 'kamoney_asset', 'kamoney_address', 'kamoney_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('kamoney_redirect', 'kamoney_asset', 'kamoney_address', 'kamoney_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('kamoney_redirect', 'kamoney_asset', 'kamoney_address', 'kamoney_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kamoney_redirect', 'kamoney_asset', 'kamoney_address', 'kamoney_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kamoney_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kamoney_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kamoney_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kamoney_%';

