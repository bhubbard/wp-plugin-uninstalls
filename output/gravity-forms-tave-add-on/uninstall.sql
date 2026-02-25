-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_tave_version', 'gf_tave_settings', 'gf_taveErrorLog', 'recently_activated');

