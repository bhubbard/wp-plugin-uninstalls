-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecpangenic_apikey', 'ecpangenic_title', 'ecpangenic_color_background_title', 'ecpangenic_roboticon', 'ecpangenic_initmessage', 'ecpangenic_buttoncolor', 'ecpangenic_client_name', 'ecpangenic_client_lang', 'ecpangenic_margin_bottom', 'ecpangenic_margin_right', 'ecpangenic_bottom_size', 'ecpangenic_color_background_chat', 'ecpangenic_color_outgoing_chat', 'ecpangenic_color_incoming_chat', 'ecpangenic_color_text_chat', 'ecpangenic_color_text_title', 'ecpangenic_color_links_chat', 'ecpangenic_color_input_background', 'ecpangenic_color_input_text', 'ecpangenic_instance_id', 'ecpangenic_assistant_id', 'ecpangenic_session_id', 'ecpangenic_email', 'ecpangenic_password', 'ecpangenic_assistants');

