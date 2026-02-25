-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lzd_skyway_webrtc_api_key', 'lzd_skyway_webrtc_enable_external_user');

