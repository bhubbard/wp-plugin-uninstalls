-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ca_logo_file', 'ca_logo_url', 'ca_login_background_color', 'ca_custom_css', 'ca_remove_meta_generator', 'ca_remove_meta_rsd', 'ca_remove_meta_wlw', 'ca_remove_rss_links', 'ca_remove_dashboard_site_health_status', 'ca_remove_dashboard_at_a_glance', 'ca_remove_dashboard_activity', 'ca_remove_dashboard_quick_press', 'ca_remove_dashboard_wordpress_news', 'ca_remove_dashboard_plugins', 'ca_remove_dashboard_wordpress_other');

