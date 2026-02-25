-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ingenidev_gift_hide_out_of_stock', 'ingenidev_gift_hide_non_gift_items', 'ingenidev_gift_products');

