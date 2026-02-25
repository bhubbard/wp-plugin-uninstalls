-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sendwp_client_secret', 'sendwp_client_connected', 'sendwp_forwarding_enabled', '_transient_timeout_sendwp_pulse_monitor', '_transient_sendwp_pulse_monitor', 'sendwp_pulse_monitor');

