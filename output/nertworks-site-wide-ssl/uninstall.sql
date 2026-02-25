-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nertworks_site_wide_ssl_redirect_type', 'nertworks_site_wide_ssl_dashboard_option', 'nertworks_site_wide_ssl_website_option', 'nertworks_sidewidessl_plugin_do_activation_redirect_popup', 'nertworks_site_wide_ssl_dashboard_enabled', 'nertworks_site_wide_ssl_website_enabled');

