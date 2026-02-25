-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pta_volunteer_sus_main_options', 'pta_volunteer_sus_email_options', 'pta_sus_last_reminders', 'pta_sus_last_reschedule_emails', 'pta_sus_rescheduled_signup_ids', 'pta_volunteer_sus_validation_options', 'pta_sus_reminders_last_batch', 'pta_sus_reschedule_emails_last_batch', 'pta_volunteer_sus_integration_options', 'pta_sus_copied_tasks', 'pta_sus_last_log_clear', 'pta_sus_db_version', 'pta_sus_hide_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_name', 'first_name', 'billing_phone', '_pta_member_directory_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_name', 'first_name', 'billing_phone', '_pta_member_directory_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_name', 'first_name', 'billing_phone', '_pta_member_directory_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_name', 'first_name', 'billing_phone', '_pta_member_directory_email');

