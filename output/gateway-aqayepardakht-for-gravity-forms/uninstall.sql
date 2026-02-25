-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_aqayepardakht_configured', 'gf_aqayepardakht_version', 'gf_aqayepardakht_settings', 'recently_activated');

