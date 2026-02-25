-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_ratings_ip_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'votes');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'votes');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'votes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'votes');

