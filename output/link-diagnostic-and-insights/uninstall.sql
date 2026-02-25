-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lhcfwp_scan_state', 'lhcfwp_settings', 'lhcfwp_bulk_fix_state');

