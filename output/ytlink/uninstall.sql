-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ilink', 'fsob', 'fsun', 'ico_x', 'fsli', 'fsre', 'fb_settings', 'pp_settings', 'sb_settings', 'videobox', 'param', 'video_x', 'video_y', 'ppic', 'tit', 'float', 'fso', 'fs', 'hlage', 'pfeil', 'float_def', 'hlage_def', 'pfeil_def', 'ico_xm', 'video_x_def', 'video_y_def', 'tit_def', 'ico_xs', 'ico_xl', 'fb_settings_def', 'pp_settings_def', 'sb_settings_def', 'ico_y', 'arrowcol', 'fb_cust', 'pp_cust', 'fun', 'float_dev');

