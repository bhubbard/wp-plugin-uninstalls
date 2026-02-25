-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photo_collage_scan_cache_version', 'photo_collage_uninstall_preference', 'update_plugins', 'photo_collage_block_count');

