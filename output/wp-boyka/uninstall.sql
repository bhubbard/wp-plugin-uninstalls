-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boyka_compression_level', 'boyka_compress_thumbnails', 'boyka_compress_on_upload', 'boyka_disable_preview', 'boyka_verbose_mode');

