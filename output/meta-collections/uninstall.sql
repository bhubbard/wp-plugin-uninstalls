-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('collection_cpt', 'mediametadata');
DELETE FROM wp_options WHERE option_name LIKE 'metadata_%';
DELETE FROM wp_options WHERE option_name LIKE 'metaboxes_%';
DELETE FROM wp_options WHERE option_name LIKE 'userinterface_%';
DELETE FROM wp_options WHERE option_name LIKE 'tableorder_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'collections_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'collections_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'collections_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'collections_%';

