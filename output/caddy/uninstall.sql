-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caddy_premium_edd_license_status', 'cc_dismiss_welcome_notice', 'cc_disable_branding', 'cc_affiliate_id', 'cc_menu_cart_widget', 'cc_menu_saves_widget', 'cc_free_shipping_amount', 'cc_free_shipping_tax', 'cc_shipping_country', 'cc_product_recommendation', 'cc_product_recommendation_type', 'cc_enable_sfl_options', 'cc_custom_css', 'caddy_install_date', 'caddy_version', 'cc_sfl_btn_on_product', 'cp_mobile_notices', 'cp_desktop_notices', 'woocommerce_tax_display_cart', 'caddy_ann_license_status', 'ga_tracking_license_status', 'caddy_settings_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cc_dismiss_user_optin_notice', '_caddy_recommendations', 'cc_save_for_later_items', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('cc_dismiss_user_optin_notice', '_caddy_recommendations', 'cc_save_for_later_items', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('cc_dismiss_user_optin_notice', '_caddy_recommendations', 'cc_save_for_later_items', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cc_dismiss_user_optin_notice', '_caddy_recommendations', 'cc_save_for_later_items', '_regular_price', '_sale_price');

