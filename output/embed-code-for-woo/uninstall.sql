-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wec_archive_code', 'wec_product_page', 'wec_cart_page', 'wec_checkout_page', 'wec_confirmation_page', 'wec_embed_in_head', 'wec_all_pages');

