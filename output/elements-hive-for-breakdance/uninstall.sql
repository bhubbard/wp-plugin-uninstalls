-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eh_turnstile_site_key', 'eh_turnstile_secret_key', 'eh_turnstile_breakdance_enabled', 'eh_turnstile_breakdance_disabled_ids', 'eh_turnstile_verified', 'eh_turnstile_last_error');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

