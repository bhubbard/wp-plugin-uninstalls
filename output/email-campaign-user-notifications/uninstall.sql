-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_Plugin', 'default_subject', 'default_template', 'email_crons_roles_chunk', 'email_crons_every_cron_time', 'email_crons_user_chunk', 'email_crons_email_subject', 'email_crons_email_template_editor_name', 'customize_global_variable_options', 'customize_variable_preview', 'email_crons_bulk_user_email', 'email_crons_bulk_users_track', 'email_crons_progress_check', 'cron_setting_update_success', 'cron_setting_update_fail', 'update_success', 'update_fail', 'update_error', 'users_selection_update_success');

