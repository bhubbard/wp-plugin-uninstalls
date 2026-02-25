-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsm_quote', 'google_maps_master_view_basic_choice', 'google_maps_master_load_basic_roadmap', 'google_maps_master_load_basic_satellite', 'google_maps_master_load_basic_hybrid', 'google_maps_master_load_basic_terrain', 'google_maps_master_load_basic_marker1', 'google_maps_marker1_basic_choice');

