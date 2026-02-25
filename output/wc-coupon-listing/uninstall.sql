-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_coupon_listing_show_on_product_page', 'wc_coupon_listing_mobile_screen_size', 'wc_coupon_listing_required_product', 'wc_coupon_listing_title');

