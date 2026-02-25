-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weather_master_view_basic_ds_detail_choice', 'weather_master_load_basic_ds_city', 'weather_master_load_basic_ds_state', 'weather_master_load_basic_ds_country', 'tsm_quote');

