-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('friendzsoft_chatbot_header_color', 'friendzsoft_openai_api_url', 'friendzsoft_openai_api_key', 'friendzsoft_chatbot_logo', 'friendzsoft_chatbot_primary_color', 'friendzsoft_chatbot_title', 'friendzsoft_openai_instruction');

