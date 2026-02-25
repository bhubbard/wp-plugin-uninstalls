-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_slug', 'woocommerce_prepend_shop_page_to_urls', 'catalyst_connect');

