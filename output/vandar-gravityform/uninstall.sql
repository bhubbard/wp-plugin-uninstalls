-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_vandar_configured', 'gf_vandar_version', 'gf_vandar_settings', 'recently_activated');

