-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vdo_client_key', 'vdo_default_width', 'vdo_default_height', 'vdo_player_speed', 'vdo_embed_version', 'vdo_player_theme', 'vdo_annotate_code', 'vdo_send_user_id_in_api', 'vdo_show_plugin_in_sidebar', 'vdo_plugin_version');

