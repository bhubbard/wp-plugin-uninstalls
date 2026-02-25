-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmll_db_version', 'woocommerce_enable_checkout_login_reminder');

