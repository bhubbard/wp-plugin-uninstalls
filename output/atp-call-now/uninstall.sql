-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atpcn_page_id', 'atpcn_link', 'atpcn_text', 'atpcn_left_right', 'atpcn_bottom_top', 'atpcn_hide_pc', 'atpcn_hide_mb', 'atpcn_image_url', 'atpcn_size', 'atpcn_long', 'atpcn_color', 'atpcn_color_bg', 'atpcn_color_text', 'atpcn_not_page_id');

