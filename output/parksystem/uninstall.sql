-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parksystem_page_template', 'parksystem_parking_token', 'parksystem_body_bg_color', 'parksystem_text_color', 'parksystem_input_bg_color', 'parksystem_label_text_color', 'parksystem_card_bg_color', 'parksystem_input_hover_bg_color', 'parksystem_block_template_content', 'parksystem_block_template_path', 'parksystem_iframe_content');

