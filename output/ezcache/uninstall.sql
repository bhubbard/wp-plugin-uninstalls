-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ezcache_first_run', 'ezcache_convert_images_to_webp_reprocess_queue', 'ezcache_version', 'ezcache_activating', 'ezcache_deactivating', 'ezcache_repaired', 'ezcache_https_2_support');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ezcache_do_not_cache_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ezcache_do_not_cache_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ezcache_do_not_cache_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ezcache_do_not_cache_post');

