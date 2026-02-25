-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_registration_generate_username', 'ptwoo_simple_order_approval_nag');

