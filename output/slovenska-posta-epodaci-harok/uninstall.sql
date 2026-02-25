-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsseph_options', 'tsseph_bonus_options', 'woocommerce_weight_unit');

