-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mep_video_skin', 'mep_script_on_demand', 'mep_default_video_height', 'mep_default_video_width', 'mep_default_video_type', 'mep_default_audio_height', 'mep_default_audio_width', 'mep_default_audio_type');

