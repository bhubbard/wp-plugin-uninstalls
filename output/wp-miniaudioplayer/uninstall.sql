-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('miniAudioPlayer_excluded', 'miniAudioPlayer_showVolumeLevel', 'miniAudioPlayer_allowMute', 'miniAudioPlayer_showTime', 'miniAudioPlayer_showRew', 'miniAudioPlayer_width', 'miniAudioPlayer_skin', 'miniAudioPlayer_animate', 'miniAudioPlayer_add_gradient', 'miniAudioPlayer_volume', 'miniAudioPlayer_download', 'miniAudioPlayer_custom_skin_name', 'miniAudioPlayer_download_security', 'miniAudioPlayer_donate', 'miniAudioPlayer_getMetadata', 'miniAudioPlayer_version', 'miniAudioPlayer_customizer', 'miniAudioPlayer_custom_skin_css', 'miniAudioPlayer_active_all', 'miniAudioPlayer_replaceDefault', 'miniAudioPlayer_replaceDefault_show_title', 'miniAudioPlayer_custom_skin_css ', 'miniAudioPlayer_use_html5_download', 'miniAudioPlayer_autoplay');

