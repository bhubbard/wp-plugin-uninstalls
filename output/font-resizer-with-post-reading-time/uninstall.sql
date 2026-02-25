-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsc_disable_option', 'fsc_reading_time_pre_text', 'fsc_btn_bg', 'fsc_btn_color', 'fsc_btn_border', 'fsc_reading_time_bg', 'fsc_reading_time_color');

