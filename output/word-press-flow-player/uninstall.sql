-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flowplayer_backgroundColor', 'flowplayer_canvas', 'flowplayer_sliderColor', 'flowplayer_buttonColor', 'flowplayer_buttonOverColor', 'flowplayer_durationColor', 'flowplayer_timeColor', 'flowplayer_progressColor', 'flowplayer_bufferColor', 'flowplayer_autobuffer', 'flowplayer_autoplay', 'flowplayer_key', 'flowplayer_logo', 'flowplayer_logolink');

