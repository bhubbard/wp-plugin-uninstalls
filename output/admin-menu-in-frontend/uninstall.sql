-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_amf_show_admin_menu', '_amf_admin_menu_html', '_amf_collapse_admin_menu', '_amf_fixate_admin_menu');
DELETE FROM wp_usermeta WHERE meta_key IN ('_amf_show_admin_menu', '_amf_admin_menu_html', '_amf_collapse_admin_menu', '_amf_fixate_admin_menu');
DELETE FROM wp_termmeta WHERE meta_key IN ('_amf_show_admin_menu', '_amf_admin_menu_html', '_amf_collapse_admin_menu', '_amf_fixate_admin_menu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_amf_show_admin_menu', '_amf_admin_menu_html', '_amf_collapse_admin_menu', '_amf_fixate_admin_menu');

