-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_url_title', 'custom_login_logo_url', 'wp_flat_admin_custom_logo_path');

