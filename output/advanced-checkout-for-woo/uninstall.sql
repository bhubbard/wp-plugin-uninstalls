-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('K7eypR3a8ndomG2en3', 'RandoM9kEYp3Hrase1L', '5KeyWoRd2RandoM8Gen', 'Gen1raNdomKeyP4hrasE', '7R8a9nD3oM6K2eYp0hrase', 'WAWC_logo_selector', 'WAWC_page_names', 'WAWC_page_links', 'WAWC_map_api', 'WAWC_remove_additional_field', 'WAWC_remove_company', 'WAWC_remove_address2', 'WAWC_remove_phone', 'WAWC_remove_shipping_address', 'WAWC_remove_coupons', 'button-background-color', 'button-text-color', 'link-colors', 'logo-width-px', 'WAWC_order_bump_position', 'WAWC_order_bump_title', 'WAWC_order_bump_price', 'WAWC_order_bump_description', 'WAWC_bump_image_selector', 'woocommerce_enable_guest_checkout', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_enable_signup_and_login_from_checkout');

