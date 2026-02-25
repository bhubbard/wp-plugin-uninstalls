-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dhp_plugin_version', 'tip_url', 'timeout_duration', 'redirect_url', 'kiosk_useragent', 'kiosk_blockurls', 'scripts_whitelist', 'styles_whitelist', 'kiosk_launch');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('project_settings', 'project_id', 'dhp_map_s_bounds', 'dhp_map_w_bounds', 'dhp_map_n_bounds', 'dhp_map_e_bounds', 'dhp_map_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('project_settings', 'project_id', 'dhp_map_s_bounds', 'dhp_map_w_bounds', 'dhp_map_n_bounds', 'dhp_map_e_bounds', 'dhp_map_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('project_settings', 'project_id', 'dhp_map_s_bounds', 'dhp_map_w_bounds', 'dhp_map_n_bounds', 'dhp_map_e_bounds', 'dhp_map_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('project_settings', 'project_id', 'dhp_map_s_bounds', 'dhp_map_w_bounds', 'dhp_map_n_bounds', 'dhp_map_e_bounds', 'dhp_map_id');

