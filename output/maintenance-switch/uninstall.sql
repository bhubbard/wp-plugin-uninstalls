-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maintenance_switch_settings', 'ms_page_html', 'ms_switch_roles', 'ms_allowed_roles', 'ms_allowed_ips', 'ms_use_theme', 'ms_status', 'ms_maintenance_page_html', 'ms_allowed_ip', 'maintenance_switch_status', 'maintenance_switch_version');

