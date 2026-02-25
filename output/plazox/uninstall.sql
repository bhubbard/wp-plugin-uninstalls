-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plazox_bar_top_menu_show', 'plazox_bar_top_menu_show_icon', 'plazox_bar_top_menu_text_message', 'plazox_bar_top_menu_style', 'plazox_product_page_show', 'plazox_product_page_show_banner', 'plazox_floating_banner_visible', 'plazox_floating_banner_position', 'plazox_floating_banner_design');

