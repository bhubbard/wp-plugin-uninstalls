-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('we_pos_version', 'woocommerce_myaccount_page_id', 'we_pos_installed', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_tax_display_shop', 'woocommerce_tax_display_cart', 'woocommerce_prices_include_tax', 'wepos-flush-rewrites');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

