-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whatif_currency', 'whatif_bg_color', 'whatif_text_color', 'whatif_input_bg_color', 'whatif_input_text_color', 'whatif_input_border_color', 'whatif_button_bg_color', 'whatif_button_text_color', 'whatif_input_border_radius', 'whatif_border_radius', 'whatif_result_border_color', 'whatif_result_text_color', 'whatif_made_love', 'whatif_tech');

