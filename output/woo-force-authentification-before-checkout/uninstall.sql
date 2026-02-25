-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%donation_notice_dismissed';

