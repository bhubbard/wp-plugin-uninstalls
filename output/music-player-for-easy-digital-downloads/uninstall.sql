-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eddmp_global_settings');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eddmp_enable_player', '_eddmp_show_in', '_eddmp_player_layout', '_eddmp_player_controls', '_eddmp_player_volume', '_eddmp_player_title', '_eddmp_play_all', '_eddmp_loop', '_eddmp_preload', '_eddmp_visualizer', '_eddmp_drive_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eddmp_enable_player', '_eddmp_show_in', '_eddmp_player_layout', '_eddmp_player_controls', '_eddmp_player_volume', '_eddmp_player_title', '_eddmp_play_all', '_eddmp_loop', '_eddmp_preload', '_eddmp_visualizer', '_eddmp_drive_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eddmp_enable_player', '_eddmp_show_in', '_eddmp_player_layout', '_eddmp_player_controls', '_eddmp_player_volume', '_eddmp_player_title', '_eddmp_play_all', '_eddmp_loop', '_eddmp_preload', '_eddmp_visualizer', '_eddmp_drive_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eddmp_enable_player', '_eddmp_show_in', '_eddmp_player_layout', '_eddmp_player_controls', '_eddmp_player_volume', '_eddmp_player_title', '_eddmp_play_all', '_eddmp_loop', '_eddmp_preload', '_eddmp_visualizer', '_eddmp_drive_files');

