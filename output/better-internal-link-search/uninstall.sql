-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('better_internal_link_search_version', 'better_internal_link_search');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twitter');
DELETE FROM wp_usermeta WHERE meta_key IN ('twitter');
DELETE FROM wp_termmeta WHERE meta_key IN ('twitter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twitter');

