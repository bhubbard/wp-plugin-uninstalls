-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('n8n_chat_widget_url', 'n8n_chat_widget_enabled', 'n8n_chat_widget_position', 'n8n_chat_widget_title', 'n8n_chat_widget_color', 'n8n_chat_widget_icon', 'n8n_chat_widget_icon_type', 'n8n_chat_widget_svg_icon', 'n8n_chat_widget_zoom');

