-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jss_scroll_to_top_image', 'jamify_jquery_smooth_scroll_image');

