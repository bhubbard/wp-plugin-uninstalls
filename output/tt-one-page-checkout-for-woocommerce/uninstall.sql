-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('one_page_checkout_enabled', 'one_page_checkout_position', 'one_page_checkout_addtocart_text', 'one_page_checkout_placeorder_text', 'one_page_checkout_ordernotes_text');

