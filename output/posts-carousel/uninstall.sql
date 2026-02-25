-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active', 'show_in', 'posts_number', 'Slider_Height', 'wporg', 'Height_Type', 'medium_large_size_w', 'pager', 'interval', 'hover', 'next_prev');

