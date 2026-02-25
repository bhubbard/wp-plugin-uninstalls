-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_audio_disable_simultaneous_play', 'sc_audio_disable_url_validation');

