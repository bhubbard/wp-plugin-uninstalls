-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ms_design_setting', 'ms_slider_setting', 'ms_grid_activation_redirect');

