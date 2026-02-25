-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_batch_overwrite', 'cc_start', 'cc_end', 'cc_batch_share', 'cc_batch_mod', 'mc_cc_default_com_setting_name', 'mc_cc_default_mod_setting_name', 'mc_cc_search_setting_name', 'mc_cc_area_setting_name', 'mc_cc_image_setting_name', 'mc_cc_link_setting_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mc_cc_default_mod_setting_name', '_mc_cc_default_com_setting_name', '_mc_cc_default_com_setting_name_flag', '_mc_cc_default_mod_setting_name_flag', '_mc_cc_full_setting_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mc_cc_default_mod_setting_name', '_mc_cc_default_com_setting_name', '_mc_cc_default_com_setting_name_flag', '_mc_cc_default_mod_setting_name_flag', '_mc_cc_full_setting_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mc_cc_default_mod_setting_name', '_mc_cc_default_com_setting_name', '_mc_cc_default_com_setting_name_flag', '_mc_cc_default_mod_setting_name_flag', '_mc_cc_full_setting_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mc_cc_default_mod_setting_name', '_mc_cc_default_com_setting_name', '_mc_cc_default_com_setting_name_flag', '_mc_cc_default_mod_setting_name_flag', '_mc_cc_full_setting_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_flag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_flag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_flag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_flag';

