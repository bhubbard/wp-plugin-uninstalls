-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtt_blogname_list', 'rtt_blogname_behavior', 'rtt_blogname_offset', 'rtt_blogname_startdate', 'rtt_blogname_repeat');

