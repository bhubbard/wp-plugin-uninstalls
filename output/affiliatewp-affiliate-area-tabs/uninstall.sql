-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affwp_version', 'affwp_aat_version', 'affwp_aat_version_upgraded_from', 'affwp_settings');

