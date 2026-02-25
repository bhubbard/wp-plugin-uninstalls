-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ame_cpe_settings', 'ame_cpe_restricted_items', 'ws_menu_editor', 'ws_ame_plugin_visibility', 'ws_ame_dashboard_widgets', 'ws_ame_hide_pv_notice', 'ws_ame_redirects', 'ws_ame_rui_first_change');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ame_show_hints', '_ame_cpe_post_policy', 'ws_nmh_seen_menus', 'ame_rui_first_login_done');
DELETE FROM wp_usermeta WHERE meta_key IN ('ame_show_hints', '_ame_cpe_post_policy', 'ws_nmh_seen_menus', 'ame_rui_first_login_done');
DELETE FROM wp_termmeta WHERE meta_key IN ('ame_show_hints', '_ame_cpe_post_policy', 'ws_nmh_seen_menus', 'ame_rui_first_login_done');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ame_show_hints', '_ame_cpe_post_policy', 'ws_nmh_seen_menus', 'ame_rui_first_login_done');

