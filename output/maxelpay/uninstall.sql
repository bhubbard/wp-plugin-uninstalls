-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_maxelpay_settings', 'maxelpay_version', 'maxelpay_installDate');

