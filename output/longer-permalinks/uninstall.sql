-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('longer-permalinks-pluginver', 'longer-permalinks-wpver', 'longer-permalinks-dbver', 'longer-permalinks-backup-needed', 'longer-permalinks-revert-needed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('longer-permalinks-post-name-longer');
DELETE FROM wp_usermeta WHERE meta_key IN ('longer-permalinks-post-name-longer');
DELETE FROM wp_termmeta WHERE meta_key IN ('longer-permalinks-post-name-longer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('longer-permalinks-post-name-longer');

