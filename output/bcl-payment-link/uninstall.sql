-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bcl_api_token', 'bcl_order_prefix', 'bcl_portal_key', 'bcl_payment_select');

