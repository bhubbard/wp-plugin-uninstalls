-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_breadcrumbs_customizer_change_defaults_enabled', 'alg_wc_breadcrumbs_customizer_change_home_url_enabled', 'alg_wc_breadcrumbs_customizer_hide', 'alg_wc_breadcrumbs_customizer_defaults', 'alg_wc_breadcrumbs_customizer_home_url', 'alg_wc_breadcrumbs_customizer_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

