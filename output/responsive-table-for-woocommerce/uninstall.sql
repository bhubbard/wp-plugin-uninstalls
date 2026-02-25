-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dc_rtfw_activate', 'dc_rtfw_activate_cart', 'dc_rtfw_activate_wishlist', 'dc_rtfw_wishlist_page');

