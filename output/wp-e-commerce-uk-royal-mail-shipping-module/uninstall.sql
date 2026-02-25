-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uk_shipping_options_lite', 'do_not_use_shipping', 'base_country');

