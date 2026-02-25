-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spotify_master_load_size_basic', 'spotify_master_load_size_detailed', 'spotify_master_load_theme_light', 'spotify_master_load_theme_dark', 'spotifybutton_size_choice', 'spotifybutton_theme_choice', 'tsm_quote');

