-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paydart_settings', 'woocommerce_checkout_page_id', 'isWebsiteAdded', 'websiteOption', 'woocommerce_pay_page_id');

