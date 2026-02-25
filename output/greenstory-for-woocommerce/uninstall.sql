-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs-product', 'gs-general', 'gs-cart', 'gs-cart-offset', 'gs-counter', 'gs-brand-offset', 'gs-customer-impact', 'gs-pdp-offset', 'option_2');

