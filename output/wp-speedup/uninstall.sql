-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsu_total_bytes', 'selection_css', 'wpsu_options', 'selection_js', 'wpsu_compress_images');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

