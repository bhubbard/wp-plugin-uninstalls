-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shiptastic_ups_version', 'woocommerce_shiptastic_ups_version');

