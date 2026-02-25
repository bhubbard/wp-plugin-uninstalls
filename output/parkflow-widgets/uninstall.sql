-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parkflow_color', 'parkflow_tenant', 'parkflow_parking', 'parkflow_locale');

