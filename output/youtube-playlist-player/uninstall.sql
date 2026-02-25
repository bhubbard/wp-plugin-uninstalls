-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ytpp_rel', 'ytpp_info', 'ytpp_controls', 'ytpp_privacy', 'ytpp_iframe_fix', 'ytppYouTubeApi', 'ytpp_height');

