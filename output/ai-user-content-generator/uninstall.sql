-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ucgaip_placeholder_text', 'ucgaip_border_radius', 'ucgaip_button_color', 'ucgaip_button_text', 'ucgaip_prompt', 'ucgaip_api_key', 'ucgaip_store_inputs', 'ucgaip_prompt_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_input', 'ucgaip_response', 'timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_input', 'ucgaip_response', 'timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_input', 'ucgaip_response', 'timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_input', 'ucgaip_response', 'timestamp');

