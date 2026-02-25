-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('menu_master_show_fields', 'menu_master_filter_options', 'menu_master_menu_order', 'menu_master_custom_category_order', 'menu_master_title_font_color', 'menu_master_title_font_size', 'menu_master_title_font_weight', 'menu_master_description_font_color', 'menu_master_description_font_size', 'menu_master_description_font_weight', 'menu_master_price_font_color', 'menu_master_price_font_size', 'menu_master_price_font_weight', 'menu_master_default_menu_image', 'menu_master_veg_nonveg_icons', 'menu_master_elementor_page_id', 'menu_master_gutenberg_page_id', 'menu_master_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mmrm_ai_botkit_banner_dismissed', '_elementor_data', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('mmrm_ai_botkit_banner_dismissed', '_elementor_data', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('mmrm_ai_botkit_banner_dismissed', '_elementor_data', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mmrm_ai_botkit_banner_dismissed', '_elementor_data', '_wp_page_template');

