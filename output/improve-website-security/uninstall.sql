-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('change_admin_url_improve_website_security_itc', 'itc_plugin_deactivation_secret_improve_website_security_itc');
DELETE FROM wp_options WHERE option_name LIKE 'itc_improve_website_security%';

