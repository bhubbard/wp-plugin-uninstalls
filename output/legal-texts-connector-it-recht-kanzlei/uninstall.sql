-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gzdp_legal_page_terms_enabled', 'woocommerce_gzdp_legal_page_revocation_enabled', 'gox_product_domain');

