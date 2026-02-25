-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_main_nav', 'hide_site_name', 'hide_login_signup', 'hide_visit_random', 'scroll_with_pages', 'add_wp_pages', 'add_bp_components', 'page_link_dropdown', 'bp_community_links', 'list_pages_dropdown', 'main_background_color', 'sub_background_color', 'main_text_color', 'link_hover_color', 'nav_back_color', 'sub_item_width', 'main_item_padding', 'menu_border_color', 'overall_navbar_width', 'overall_item_height', 'submenu_top_margin', 'navbar_vertical_offset', 'navbar_horizontal_offset', 'item_font_family', 'item_font_size', 'item_font_style', 'item_font_weight', 'bp-disable-forum-directory');

