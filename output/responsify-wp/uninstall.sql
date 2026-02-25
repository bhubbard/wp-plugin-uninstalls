-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selected_sizes', 'globally_active', 'rwp_added_filters', 'rwp_picturefill', 'rwp_retina', 'selected_element', 'ignored_image_formats', 'rwp_custom_media_queries', 'rwp_debug_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

