-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is_config_is_ed', 'is_config_is_ped', 'is_config_is_med', 'is_config_is_led', 'is_config_jpeg', 'is_config_png', 'is_config_muki', 'is_config_fsize', 'is_config_is_lmax', 'is_config_is_fs', 'is_config_is_q', 'is_config_is_wmt', 'is_config_fi', 'is_config_is_csize_x', 'is_config_is_csize_y');

