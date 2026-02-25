-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_transient__mailster_send_period_timeout', '_transient__mailster_send_period', 'mailster_check_bounces_lock', '_mailster_sendgrid_last_bounce_check');

