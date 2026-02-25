-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('send_pulse_deferred_admin_notices', 'sendpulse_code', 'sendpulse_active', 'sendpulse_addinfo', 'sendpulse_push_url', 'sendpulse_script_id', 'sendpulse_script_params');

