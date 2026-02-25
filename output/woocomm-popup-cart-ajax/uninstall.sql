-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ata_cart_notices_hide', 'woocommerce_cart_redirect_after_add');

