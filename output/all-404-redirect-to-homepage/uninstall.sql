-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p404_redirect_options', 'P404_email_update', 'p404_migration_status2', 'P404REDIRECT_upgrade_msg', 'P404_alert_msg');

