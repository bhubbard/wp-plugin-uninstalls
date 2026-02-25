-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tp_ads_popup_title_color', 'tp_ads_popup_content_color', 'tp_ads_popup_ads_bg_color', 'kento_popup_ads_button_color', 'kento_popup_ads_texts_color', 'tp_ads_popup_adds_sidebar', 'tp_ads_popup_ads_title', 'tp_ads_popup_screen_bg_img', 'tp_ads_popup_adds_desc', 'tp_ads_popup_purchase_btn', 'tp_ads_popup_ads_button_link', 'tp_ads_popup_adds_open_page', 'kento_scroll_popup_screen_content');

