-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('videojs_html5_player_load_scripts_globally');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('videojs-html5-player-custom-field');
DELETE FROM wp_usermeta WHERE meta_key IN ('videojs-html5-player-custom-field');
DELETE FROM wp_termmeta WHERE meta_key IN ('videojs-html5-player-custom-field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('videojs-html5-player-custom-field');

