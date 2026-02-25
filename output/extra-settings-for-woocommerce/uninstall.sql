-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eswc_first_activate', 'eswc_settingz', 'active_sitewide_plugins', 'eswc_url_before_login', 'woocommerce_myaccount_page_id', 'woocommerce_cart_page_id', 'eswc_dismiss_notice');

