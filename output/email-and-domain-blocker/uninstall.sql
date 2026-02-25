-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blocked_domains', 'blocked_emails', 'edb_enable_logging');

