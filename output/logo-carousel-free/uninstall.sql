-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_logo_carousel_free_review_notice_dismiss', 'logo_carousel_free_version', 'logo_carousel_free_first_version', 'logo_carousel_free_activation_date', 'logo_carousel_free_db_version', '_sp_lcpro_options', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'sp-logo-carousel_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'sp_lcp_page_id%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_lcp_layout_options', 'sp_lcp_shortcode_options', 'lc_number_of_column', 'lc_number_of_column_dt', 'lc_number_of_column_smdt', 'lc_number_of_column_tablet', 'lc_number_of_column_mobile', 'lc_brand_color', 'lc_nav_arrow_color', 'lc_pagination_color', 'lc_logo_border', 'lc_show_navigation', 'lc_show_pagination_dots', 'lc_auto_play', 'lc_pause_on_hover', 'lc_touch_swipe', 'lc_mouse_draggable', 'lc_logo_rtl', 'lc_auto_play_speed', 'lc_scroll_speed', 'lc_number_of_total_logos', 'lc_logos_order_by', 'lc_logos_order', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_lcp_layout_options', 'sp_lcp_shortcode_options', 'lc_number_of_column', 'lc_number_of_column_dt', 'lc_number_of_column_smdt', 'lc_number_of_column_tablet', 'lc_number_of_column_mobile', 'lc_brand_color', 'lc_nav_arrow_color', 'lc_pagination_color', 'lc_logo_border', 'lc_show_navigation', 'lc_show_pagination_dots', 'lc_auto_play', 'lc_pause_on_hover', 'lc_touch_swipe', 'lc_mouse_draggable', 'lc_logo_rtl', 'lc_auto_play_speed', 'lc_scroll_speed', 'lc_number_of_total_logos', 'lc_logos_order_by', 'lc_logos_order', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_lcp_layout_options', 'sp_lcp_shortcode_options', 'lc_number_of_column', 'lc_number_of_column_dt', 'lc_number_of_column_smdt', 'lc_number_of_column_tablet', 'lc_number_of_column_mobile', 'lc_brand_color', 'lc_nav_arrow_color', 'lc_pagination_color', 'lc_logo_border', 'lc_show_navigation', 'lc_show_pagination_dots', 'lc_auto_play', 'lc_pause_on_hover', 'lc_touch_swipe', 'lc_mouse_draggable', 'lc_logo_rtl', 'lc_auto_play_speed', 'lc_scroll_speed', 'lc_number_of_total_logos', 'lc_logos_order_by', 'lc_logos_order', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_lcp_layout_options', 'sp_lcp_shortcode_options', 'lc_number_of_column', 'lc_number_of_column_dt', 'lc_number_of_column_smdt', 'lc_number_of_column_tablet', 'lc_number_of_column_mobile', 'lc_brand_color', 'lc_nav_arrow_color', 'lc_pagination_color', 'lc_logo_border', 'lc_show_navigation', 'lc_show_pagination_dots', 'lc_auto_play', 'lc_pause_on_hover', 'lc_touch_swipe', 'lc_mouse_draggable', 'lc_logo_rtl', 'lc_auto_play_speed', 'lc_scroll_speed', 'lc_number_of_total_logos', 'lc_logos_order_by', 'lc_logos_order', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_splogocarousel_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_splogocarousel_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_splogocarousel_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_splogocarousel_errors_%';

