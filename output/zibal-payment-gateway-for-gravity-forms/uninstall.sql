-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_zibal_configured', 'gf_zibal_version', 'gf_zibal_settings', 'recently_activated');

