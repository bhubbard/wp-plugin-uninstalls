-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shpsafe_woo_admin_api_token', 'shpsafe_woo_user_api_token');

