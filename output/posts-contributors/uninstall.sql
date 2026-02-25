-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppc_contributors_installed', 'wppc_contributors_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wppc_post_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('wppc_post_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('wppc_post_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wppc_post_author');

