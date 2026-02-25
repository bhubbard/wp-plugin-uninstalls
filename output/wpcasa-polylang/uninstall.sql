-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polylang');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', '_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', '_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', '_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', '_gallery');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'description_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'description_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'description_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'description_%';

