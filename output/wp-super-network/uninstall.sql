-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_supernetwork_parent_site', 'supernetwork_consolidated', 'supernetwork_post_types', 'supernetwork_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_supernetwork_share');
DELETE FROM wp_usermeta WHERE meta_key IN ('_supernetwork_share');
DELETE FROM wp_termmeta WHERE meta_key IN ('_supernetwork_share');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_supernetwork_share');

