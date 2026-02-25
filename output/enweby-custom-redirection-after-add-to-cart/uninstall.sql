-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_page_id', 'enweby_custom_redirection_after_addtocart_to_page');

