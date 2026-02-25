-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppinger_activated', 'ppinger_interval', 'ppinger_lastmessage');

