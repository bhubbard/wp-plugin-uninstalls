-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wangguard_blacklisted_words_list', 'woocommerce_enable_myaccount_registration');

