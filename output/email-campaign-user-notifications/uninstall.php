<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('default_subject');
delete_site_option('default_subject');
delete_option('default_template');
delete_site_option('default_template');
delete_option('email_crons_roles_chunk');
delete_site_option('email_crons_roles_chunk');
delete_option('email_crons_every_cron_time');
delete_site_option('email_crons_every_cron_time');
delete_option('email_crons_user_chunk');
delete_site_option('email_crons_user_chunk');
delete_option('email_crons_email_subject');
delete_site_option('email_crons_email_subject');
delete_option('email_crons_email_template_editor_name');
delete_site_option('email_crons_email_template_editor_name');
delete_option('customize_global_variable_options');
delete_site_option('customize_global_variable_options');
delete_option('customize_variable_preview');
delete_site_option('customize_variable_preview');

// Delete Transients
delete_transient('email_crons_bulk_user_email');
delete_site_transient('email_crons_bulk_user_email');
delete_transient('email_crons_bulk_users_track');
delete_site_transient('email_crons_bulk_users_track');
delete_transient('email_crons_progress_check');
delete_site_transient('email_crons_progress_check');
delete_transient('cron_setting_update_success');
delete_site_transient('cron_setting_update_success');
delete_transient('cron_setting_update_fail');
delete_site_transient('cron_setting_update_fail');
delete_transient('update_success');
delete_site_transient('update_success');
delete_transient('update_fail');
delete_site_transient('update_fail');
delete_transient('update_error');
delete_site_transient('update_error');
delete_transient('users_selection_update_success');
delete_site_transient('users_selection_update_success');

// Clear Cron Jobs
wp_clear_scheduled_hook('email_crons_call_email_template');

