-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdp_On_Homepage', 'sdp_On_Posts', 'sdp_On_Pages', 'sdp_On_Archives', 'sdp_On_Search', 'sdp_cookies');

