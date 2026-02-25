-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpgal_global_options', 'rpgal_spare_me', 'rpgal_a08n_time', 'rpgal_custom_css', 'rpgal_plugin_version', 'rcpig_general', 'rcpig_advanced', 'rcpig_style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_button_text', '_button_link', '_button_ntab', '_multi_img_array');
DELETE FROM wp_usermeta WHERE meta_key IN ('_button_text', '_button_link', '_button_ntab', '_multi_img_array');
DELETE FROM wp_termmeta WHERE meta_key IN ('_button_text', '_button_link', '_button_ntab', '_multi_img_array');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_button_text', '_button_link', '_button_ntab', '_multi_img_array');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

