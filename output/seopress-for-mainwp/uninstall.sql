-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seopress_google_analytics_option_name', 'seopress_pro_license_key', 'seopress_pro_license_status', 'mainwp_seopress_current_site_settings', 'seopress_pro_option_name', 'seopress_toggle', 'seopress_mainwp_external_load_set', 'mainwp_seopress_dashboard');
DELETE FROM wp_options WHERE option_name LIKE 'seopress_mainwp_external_tax%';

