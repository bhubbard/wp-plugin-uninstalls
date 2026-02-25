-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chargify');
DELETE FROM wp_options WHERE option_name LIKE 'chargify-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chargify_access_check', 'chargify_access', 'chargify_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('chargify_access_check', 'chargify_access', 'chargify_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('chargify_access_check', 'chargify_access', 'chargify_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chargify_access_check', 'chargify_access', 'chargify_level');

