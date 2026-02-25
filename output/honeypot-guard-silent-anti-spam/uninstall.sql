-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('honeypot_guard_options', 'honeypot_guard_db_version', 'honeypot_guard_installed_at');
DELETE FROM wp_options WHERE option_name LIKE 'honeypot_guard_registration_success_%';

