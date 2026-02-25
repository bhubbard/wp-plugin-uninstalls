-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'nice_ticker_cl_repeat_group', 'nice_ticker_heading', 'nice_ticker_heading_font_color', 'nice_ticker_heading_bg', 'nice_ticker_heading_bg_hover');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'nice_ticker_cl_repeat_group', 'nice_ticker_heading', 'nice_ticker_heading_font_color', 'nice_ticker_heading_bg', 'nice_ticker_heading_bg_hover');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'nice_ticker_cl_repeat_group', 'nice_ticker_heading', 'nice_ticker_heading_font_color', 'nice_ticker_heading_bg', 'nice_ticker_heading_bg_hover');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'nice_ticker_cl_repeat_group', 'nice_ticker_heading', 'nice_ticker_heading_font_color', 'nice_ticker_heading_bg', 'nice_ticker_heading_bg_hover');

