-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailster_amazonsns_last_response', '_transient__mailster_send_period_timeout', '_transient__mailster_send_period');

