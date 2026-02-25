-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cubelaunch_settings', 'cubelaunch_pro_license_status', 'cubelaunch_pro_license_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cubelaunch_shape_type', '_cubelaunch_background_color', 'cl_hide_cpt_mobile_notice_v1');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cubelaunch_shape_type', '_cubelaunch_background_color', 'cl_hide_cpt_mobile_notice_v1');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cubelaunch_shape_type', '_cubelaunch_background_color', 'cl_hide_cpt_mobile_notice_v1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cubelaunch_shape_type', '_cubelaunch_background_color', 'cl_hide_cpt_mobile_notice_v1');

