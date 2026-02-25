-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_version', 'realty_pack_importer_attachment_media', 'recently_activated', 'realtypack_activation', 'realtypack_activate_email', 'realtypack_activate_purchase', 'RTPC_imported_demo', 'elementor_cpt_support', 'realtypack_wpl_installed', 'sidebars_widgets', 'realty_pack_importer_WPL_properties', 'realty_pack_importer_WPL_agent', 'rewrite_rules', 'active_sitewide_plugins', 'update_plugins', 'acf_plugin_updates', 'kirki_css_write_to_file_failed', 'kirki_googlefonts_cache');
DELETE FROM wp_options WHERE option_name LIKE 'realty_pack_importer_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'RTPC_update_plugin_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_menu_item_menu_item_parent', '_thumbnail_id', 'RTPC_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_menu_item_menu_item_parent', '_thumbnail_id', 'RTPC_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_menu_item_menu_item_parent', '_thumbnail_id', 'RTPC_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_menu_item_menu_item_parent', '_thumbnail_id', 'RTPC_rating');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

