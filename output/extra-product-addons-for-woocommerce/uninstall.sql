-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epafw_settings', 'epafw_run_bc_script_for_v1.1.0', 'active_sitewide_plugins');

