-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FlVid_distance_from_edge', 'FlVid_position', 'FlVid_percentage', 'FlVid_showclosebutton');

