-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_Plugin', 'front_site_api_key', 'im_frontend_roles', 'site_api_key', 'im_admin_roles');

