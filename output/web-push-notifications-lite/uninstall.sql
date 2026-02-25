-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emdn_pushem_id', 'emdn_pushem_key', 'emdn_pushem_source', 'emdn_pushem_token', 'emdn_pushem_domain', 'emdn_pushem_subdomain', 'emdn_pushem_googleid', 'emdn_pushem_gcmapi', 'emdn_pushem_type', 'emdn_pushem_mode', 'emdn_pushem_widget_show');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('role', 'ac_var', 'ac_var_type', 'ac_hook', 'ac_target', 'ac_audio', 'ac_link', 'ac_user_con');
DELETE FROM wp_usermeta WHERE meta_key IN ('role', 'ac_var', 'ac_var_type', 'ac_hook', 'ac_target', 'ac_audio', 'ac_link', 'ac_user_con');
DELETE FROM wp_termmeta WHERE meta_key IN ('role', 'ac_var', 'ac_var_type', 'ac_hook', 'ac_target', 'ac_audio', 'ac_link', 'ac_user_con');
DELETE FROM wp_commentmeta WHERE meta_key IN ('role', 'ac_var', 'ac_var_type', 'ac_hook', 'ac_target', 'ac_audio', 'ac_link', 'ac_user_con');

