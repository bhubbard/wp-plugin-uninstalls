-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nep_native_emoji_active', 'nep_plugin_admin_activation', 'nep_plugin_close_panel', 'nep_plugin_comments_activation', 'nep_plugin_site_use_jquery', 'nep_plugin_show_on_mobile', 'nep_plugin_panel_color', 'nep_plugin_panel_position', 'nep_plugin_close_panel_comments');

