-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customer_who_viewed_title', 'total_items_display', 'category_filter', 'show_image_filter', 'show_price_filter', 'show_addtocart_filter', 'product_order');
DELETE FROM wp_options WHERE option_name LIKE 'customer_also_viewed_%';

