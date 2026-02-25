-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctsop_height_display_length_s1', 'ctsop_height_display_length_s2', 'ctsop_height_display_length_s3', 'ctsop_speed', 'ctsop_waitseconds');

