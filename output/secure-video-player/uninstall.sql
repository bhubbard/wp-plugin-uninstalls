-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('svpdrm_widevine_px', 'svpdrm_playready_px', 'svpdrm_fairplay_px');

