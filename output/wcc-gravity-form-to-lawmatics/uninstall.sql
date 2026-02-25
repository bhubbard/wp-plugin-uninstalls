-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcc_gravity_form_lawmatics_ignore_spam_entry', 'gf_db_version', 'wcc_gf_lawmatics_notification_send_to', 'wcc_gf_lawmatics_notification_subject', 'wcc_gf_lawmatics_debug', 'wcc_gravity_form_lawmatics_notification_send_to	', 'wcc_gravity_form_lawmatics_notification_subject', 'wcc_gravity_form_lawmatics_debug', 'wcc_gravity_form_lawmatics_uninstall', 'wcc_gravity_form_lawmatics_db_version');

