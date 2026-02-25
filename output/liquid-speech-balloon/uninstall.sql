-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liquid_speech_balloon', 'liquid_speech_balloon_img', 'liquid_speech_balloon_name', 'liquid_speech_balloon_note', 'liquid_admin_notices', 'liquid_admin_offer');

