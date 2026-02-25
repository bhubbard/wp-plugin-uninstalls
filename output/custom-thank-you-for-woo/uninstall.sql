-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcty_thankyou_page_header', 'wcty_thankyou_page_heading', 'wcty_thankyou_page_heading_color_code', 'wcty_thankyou_page_font_style', 'upload_setting_image', 'wcty_thankyou_page_id', 'wcty_thankyou_page_enable', 'logo-file');

