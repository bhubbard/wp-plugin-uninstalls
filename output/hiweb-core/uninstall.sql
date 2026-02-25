-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hiweb_plugins_server', 'hiweb_settings_cyt2lat', 'hiweb_settings_head_base', 'hiweb_cms_plugins_path', 'hiweb_cms_support_thumbnails', 'hiweb_cms_title', 'hiweb_cms_support_menus', 'hiweb_cms_support_widgets', 'hiweb_cms_support_postformats', 'hiweb_cms_autochange_basedir', 'hiweb_cms_adminmenu_options', 'hiweb_settings_script_footer');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hiweb_cms_title_mod', 'hiweb_cms_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('hiweb_cms_title_mod', 'hiweb_cms_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('hiweb_cms_title_mod', 'hiweb_cms_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hiweb_cms_title_mod', 'hiweb_cms_title');

