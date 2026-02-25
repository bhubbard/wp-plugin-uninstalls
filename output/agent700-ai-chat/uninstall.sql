-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agent700_agent_id', 'agent700_hide_overlay', 'agent700_layout_type', 'agent700_primary_color', 'agent700_message_title_color', 'agent700_bot_name', 'agent700_use_shortcode', 'agent700_chat_icon', 'agent700_chat_title', 'agent700_chat_avatar', 'agent700_chat_shortcode');

