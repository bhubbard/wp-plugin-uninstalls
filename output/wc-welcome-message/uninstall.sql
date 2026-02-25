-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('repeat_customer_message', 'guest_message', 'woocommerce_myaccount_page_id');

