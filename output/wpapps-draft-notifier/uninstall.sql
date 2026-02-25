-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpapps_draft_notifier_frequency', 'wpapps_draft_notifier_email_option', 'wpapps_draft_notifier_email_cc', 'wpapps_draft_notifier_email_template', 'wpapps_draft_notifier_remove_cron');

