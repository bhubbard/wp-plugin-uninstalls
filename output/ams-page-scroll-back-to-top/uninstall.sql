-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msv_amspsbtt_page_scroll_back_to_top_icon', 'msv_amspsbtt_page_scroll_back_to_top_style', 'msv_amspsbtt_page_scroll_back_to_top_layout', 'msv_amspsbtt_page_scroll_back_to_top_advanced');

