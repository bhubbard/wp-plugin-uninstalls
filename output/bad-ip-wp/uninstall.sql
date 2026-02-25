-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bad_ip_blocked', 'bad_ip_last_upgrade', 'bad_ip_activated', 'bad_ip_updated');

