-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccc_cf7_lawmatics_ignore_spam_entry', 'cf7_db_version', 'wcc_cf7_lawmatics_notification_send_to', 'wcc_cf7_lawmatics_notification_subject', 'wcc_cf7_lawmatics_debug', 'wccc_cf7_lawmatics_notification_send_to	', 'wccc_cf7_lawmatics_notification_subject', 'wccc_cf7_lawmatics_debug', 'wccc_cf7_lawmatics_uninstall', 'wccc_cf7_lawmatics_db_version');

