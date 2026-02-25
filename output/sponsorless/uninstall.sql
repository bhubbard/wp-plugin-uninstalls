-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sponsorless_enable_coupon', 'woocommerce_enable_coupons', 'sponsorless_cookie_duration', 'sponsorless_auth_completed');

