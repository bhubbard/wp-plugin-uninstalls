-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brkhi_merchantid_input', 'brkhi_apisecret_input', 'brkhi_activity_logs');

