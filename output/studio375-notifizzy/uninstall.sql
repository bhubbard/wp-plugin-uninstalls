-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notifizzy_token', 'notifizzy_entries', 'notifizzy_log', 'notifizzy_response1', 'notifizzy_response');

