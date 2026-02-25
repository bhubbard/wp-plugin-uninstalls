-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcvs_settings', 'wpcvs_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcvs_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcvs_show_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcvs_groups_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcvs_name', 'wpcvs_group', 'wpcvs_tooltip', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image', 'wpcvs_radio');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcvs_name', 'wpcvs_group', 'wpcvs_tooltip', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image', 'wpcvs_radio');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcvs_name', 'wpcvs_group', 'wpcvs_tooltip', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image', 'wpcvs_radio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcvs_name', 'wpcvs_group', 'wpcvs_tooltip', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image', 'wpcvs_radio');

