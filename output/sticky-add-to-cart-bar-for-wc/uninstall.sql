-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dismissed-wsc-notice-date', 'dismissed-wsc-notice', 'woo_sticky_cart');

