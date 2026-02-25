-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplefavorites_dependencies', 'simplefavorites_users', 'simplefavorites_display', 'simplefavorites_cache_enabled', 'simplefavorites_dev_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simplefavorites', 'simplefavorites_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('simplefavorites', 'simplefavorites_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('simplefavorites', 'simplefavorites_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simplefavorites', 'simplefavorites_count');

