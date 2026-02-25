-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcssb_section_location', 'wcssb_db_version', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add', 'wcssb_section_default_title', 'wcssb_show_images');

