-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lockspire_email_logs', 'lockspire_blocked_today', 'lockspire_blocked_ips', 'lockspire_activity_log', 'lockspire_activity_log_key', 'lockspire_notification_emails', 'lockspire_options', 'lockspire_last_scan', 'lockspire_firewall_rules');

