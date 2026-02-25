-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fpw_use_js', 'fpw_use_streaming', 'fpw_width', 'fpw_height', 'fpw_license', 'fpw_autoplay', 'fpw_autobuffer', 'fpw_allowfs', 'fpw_bgcolor', 'fpw_root_path', 'fpw_player', 'fpw_streaming', 'fpw_js', 'fpw_playpicpath', 'fpw_splash');

