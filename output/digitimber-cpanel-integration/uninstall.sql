-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dt_cpanel_key', 'dt_cpanel_settings', 'dt_cpanel_domains', 'cpanel_key', 'cpanel_settings', 'cpanel_domains');

