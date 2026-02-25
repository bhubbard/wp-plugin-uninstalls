-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('silkypress-input-field-block', 'woocommerce_myaccount_page_id', 'woocommerce_checkout_page_id');

