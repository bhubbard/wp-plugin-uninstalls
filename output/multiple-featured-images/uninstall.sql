-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kdmfi_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kdmfi_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kdmfi_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kdmfi_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kdmfi_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_kdmfi_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_kdmfi_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_kdmfi_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kdmfi_%';

