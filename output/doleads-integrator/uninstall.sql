-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ledo_integrator_company_access_token', 'ledo_integrator_settings_utm_data');

