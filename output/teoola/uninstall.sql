-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('teoola_username', 'teoola_key', 'teoola_entity', 'teoola_minified', 'teoola_show_info', 'teoola_header_color', 'teoola_bg_icon', 'teoola_icon', 'teoola_show_popup', 'teoola_show_events', 'teoola_show_news', 'teoola_width_popup', 'teoola_chat_question', 'teoola_show_chat', 'teoola_header_color_popup', 'teoola_given_name', 'teoola_avatar');

