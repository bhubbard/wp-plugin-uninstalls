-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add', 'woocommerce_enable_shipping_calc', 'wps_wcp_global_icon_bck_color', 'wps_wcp_global_icon_hover_bck_color', 'wps_wcp_popup_footer_button', 'wps_wcp_popup_bck_color', 'wps_wcp_popup_css', 'wps_wcp_popup_header_text', 'wps_wcp_popup_footer_text', 'wps_wcp_global_icon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wps_premium_buy_notice_checkoutpopup2');
DELETE FROM wp_usermeta WHERE meta_key IN ('wps_premium_buy_notice_checkoutpopup2');
DELETE FROM wp_termmeta WHERE meta_key IN ('wps_premium_buy_notice_checkoutpopup2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wps_premium_buy_notice_checkoutpopup2');

