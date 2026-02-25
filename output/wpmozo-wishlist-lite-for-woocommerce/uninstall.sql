-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmozo_wishlist_lite_activated', 'wpmozo_transfer_cookies_products');

