-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ekatco_plugin_active', 'ekatco_button_text', 'ekatco_bg_color', 'ekatco_text_color', 'ekatco_button_width', 'ekatco_button_height', 'ekatco_padding_tb', 'ekatco_button_padding_lr', 'ekatco_button_radius', 'ekatco_button_font_size', 'ekatco_api_keys_all');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tg_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('tg_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('tg_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tg_url');

