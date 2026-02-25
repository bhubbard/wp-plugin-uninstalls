-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('retentionfox_settings', 'woocommerce_myaccount_page_id', 'retentionfox_unsubs');

