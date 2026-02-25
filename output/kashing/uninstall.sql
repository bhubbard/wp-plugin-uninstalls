-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kashing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%desc';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%desc';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%desc';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%desc';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%amount';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%amount';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%amount';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%amount';

