-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Amazon-wishlist-pro-listID', 'Amazon-wishlist-pro-sort-order', 'Amazon-wishlist-pro-websites', 'Amazon-wishlist-pro-use-cache', 'Amazon-wishlist-pro-invalidate-cache', 'Amazon-wishlist-pro-layout', 'Amazon-wishlist-pro-use-unsorted-list');

