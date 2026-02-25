-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccc_cf7_brevo_ignore_spam_entry', 'cf7_db_version', 'wcc_cf7_brevo_notification_send_to', 'wcc_cf7_brevo_notification_subject', 'wccc_cf7_brevo_debug', 'wccc_cf7_brevo_notification_send_to	', 'wccc_cf7_brevo_notification_subject', 'wccc_cf7_brevo_uninstall', 'wccc_cf7_brevo_db_version');

