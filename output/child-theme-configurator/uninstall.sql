-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allowedthemes');
DELETE FROM wp_options WHERE option_name LIKE '%_debug';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE '%_configvars';
DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%';
DELETE FROM wp_options WHERE option_name LIKE '%_debug';
DELETE FROM wp_options WHERE option_name LIKE 'plugins_delete_result_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chld_thm_cfg_upgrade_notice', '_wp_attachment_is_custom_header', 'admin_color', 'ctc_pro_upgrade_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('chld_thm_cfg_upgrade_notice', '_wp_attachment_is_custom_header', 'admin_color', 'ctc_pro_upgrade_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('chld_thm_cfg_upgrade_notice', '_wp_attachment_is_custom_header', 'admin_color', 'ctc_pro_upgrade_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chld_thm_cfg_upgrade_notice', '_wp_attachment_is_custom_header', 'admin_color', 'ctc_pro_upgrade_notice');

