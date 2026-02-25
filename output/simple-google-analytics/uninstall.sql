-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sga_analytics_id', 'sga_code_location', 'sga_demographic_and_interest', 'sga_render_when_loggedin', 'factory_plugin_versions', 'wbcr_factory_google_fonts', 'wbcr_factory_google_fonts_raw');
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';

