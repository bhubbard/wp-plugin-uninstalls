-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eventadmin_import_demo_data', 'eventadmin_import_demo_data_done', 'eventadmin_notification_email', 'eventadmin_notification_email_name', 'eventadmin_email_subject_assign', 'eventadmin_email_subject_unassign', 'eventadmin_email_text_assign', 'eventadmin_email_text_unassign', 'eventadmin_allow_overlap', 'eventadmin_unassign_limit_hours', 'eventadmin_limit_per_year', 'eventadmin_limit_per_month', 'eventadmin_limit_per_week', 'eventadmin_limit_per_day');
DELETE FROM wp_options WHERE option_name LIKE 'eventadmin_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('term_color', 'max_volunteers', 'shift_start', 'shift_end', 'eventadmin_phone', 'first_name', 'last_name', 'magic_login_token', 'magic_login_expire');
DELETE FROM wp_usermeta WHERE meta_key IN ('term_color', 'max_volunteers', 'shift_start', 'shift_end', 'eventadmin_phone', 'first_name', 'last_name', 'magic_login_token', 'magic_login_expire');
DELETE FROM wp_termmeta WHERE meta_key IN ('term_color', 'max_volunteers', 'shift_start', 'shift_end', 'eventadmin_phone', 'first_name', 'last_name', 'magic_login_token', 'magic_login_expire');
DELETE FROM wp_commentmeta WHERE meta_key IN ('term_color', 'max_volunteers', 'shift_start', 'shift_end', 'eventadmin_phone', 'first_name', 'last_name', 'magic_login_token', 'magic_login_expire');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'assigned_user_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'assigned_user_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'assigned_user_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'assigned_user_%';

