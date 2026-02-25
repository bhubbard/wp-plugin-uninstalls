-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mioguardsg_rate_limit', 'mioguardsg_honeypot_field', 'mioguard_show_badge');

