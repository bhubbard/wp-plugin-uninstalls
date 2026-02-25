-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcmp_addon_player', 'wcmp_cpmediaplayer_addon_skin', 'wcmp_dokan_enabled', 'wcmp_dokan_hide_settings', 'wcmp_mvx_enabled', 'wcmp_mvx_hide_settings', 'wcmp_wcfm_enabled', 'wcmp_wcfm_hide_settings', 'wcmp_wcv_enabled', 'wcmp_wcv_hide_settings', 'wcmp-landing-page', 'wcmp_global_settings', 'wcmp-landing-page', 'wcmp-landing-page-redirect', 'wcmp_clear_expired_transients');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_downloadable_files', '_wcmp_playback_counter', '_wcmp_enable_player', '_wcmp_show_in', '_wcmp_player_layout', '_wcmp_player_controls', '_wcmp_player_volume', '_wcmp_player_title', '_wcmp_play_all', '_wcmp_preload', '_wcmp_visualizer', '_wcmp_single_player', '_wcmp_merge_in_grouped', '_wcmp_loop', '_wcmp_on_cover');
DELETE FROM wp_usermeta WHERE meta_key IN ('_downloadable_files', '_wcmp_playback_counter', '_wcmp_enable_player', '_wcmp_show_in', '_wcmp_player_layout', '_wcmp_player_controls', '_wcmp_player_volume', '_wcmp_player_title', '_wcmp_play_all', '_wcmp_preload', '_wcmp_visualizer', '_wcmp_single_player', '_wcmp_merge_in_grouped', '_wcmp_loop', '_wcmp_on_cover');
DELETE FROM wp_termmeta WHERE meta_key IN ('_downloadable_files', '_wcmp_playback_counter', '_wcmp_enable_player', '_wcmp_show_in', '_wcmp_player_layout', '_wcmp_player_controls', '_wcmp_player_volume', '_wcmp_player_title', '_wcmp_play_all', '_wcmp_preload', '_wcmp_visualizer', '_wcmp_single_player', '_wcmp_merge_in_grouped', '_wcmp_loop', '_wcmp_on_cover');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_downloadable_files', '_wcmp_playback_counter', '_wcmp_enable_player', '_wcmp_show_in', '_wcmp_player_layout', '_wcmp_player_controls', '_wcmp_player_volume', '_wcmp_player_title', '_wcmp_play_all', '_wcmp_preload', '_wcmp_visualizer', '_wcmp_single_player', '_wcmp_merge_in_grouped', '_wcmp_loop', '_wcmp_on_cover');

