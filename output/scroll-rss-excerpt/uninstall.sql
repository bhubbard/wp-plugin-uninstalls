-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srsse_widgettitle', 'srsse_setting', 'srsse_height_display_length_s1', 'srsse_s1', 'srsse_height_display_length_s2', 'srsse_s2', 'srsse_height_display_length_s3', 'srsse_s3', 'srsse_height_display_length_s4', 'srsse_s4');

