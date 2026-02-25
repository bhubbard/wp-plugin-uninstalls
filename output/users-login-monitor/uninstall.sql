-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ulm_digest_date', 'ulm_digest_size', 'users-login-monitor_options', 'ulm_users_active');

