-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoptimize_html', 'cache_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_clear_post_cache_on_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('_clear_post_cache_on_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('_clear_post_cache_on_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_clear_post_cache_on_update');

