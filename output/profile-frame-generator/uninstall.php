<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('profileframegen_frame_id');
delete_site_option('profileframegen_frame_id');
delete_option('profileframegen_zoom_controls');
delete_site_option('profileframegen_zoom_controls');
delete_option('profileframegen_reset_position');
delete_site_option('profileframegen_reset_position');
delete_option('profileframegen_rotate_controls');
delete_site_option('profileframegen_rotate_controls');
delete_option('profileframegen_bokeh_toggle');
delete_site_option('profileframegen_bokeh_toggle');
delete_option('profileframegen_gravatar_field');
delete_site_option('profileframegen_gravatar_field');
delete_option('profileframegen_show_instructions');
delete_site_option('profileframegen_show_instructions');
delete_option('profileframegen_media_library_upload');
delete_site_option('profileframegen_media_library_upload');
delete_option('profileframegen_media_upload_loggedin_only');
delete_site_option('profileframegen_media_upload_loggedin_only');
delete_option('profileframegen_controls_position');
delete_site_option('profileframegen_controls_position');
delete_option('profileframegen_instructions_text');
delete_site_option('profileframegen_instructions_text');
delete_option('profileframegen_background_color');
delete_site_option('profileframegen_background_color');
delete_option('profileframegen_first_save_date');
delete_site_option('profileframegen_first_save_date');
delete_option('profileframegen_already_donated');
delete_site_option('profileframegen_already_donated');
delete_option('profileframegen_dismissal_count');
delete_site_option('profileframegen_dismissal_count');
delete_option('profileframegen_notice_last_dismissed');
delete_site_option('profileframegen_notice_last_dismissed');
delete_option('profileframegen_migration_completed_time');
delete_site_option('profileframegen_migration_completed_time');
delete_option('profileframegen_dismissed_post_migration_notice');
delete_site_option('profileframegen_dismissed_post_migration_notice');
delete_option('profileframegen_ui_version');
delete_site_option('profileframegen_ui_version');

// Delete Transients
delete_transient('profileframegen_plugin_activated');
delete_site_transient('profileframegen_plugin_activated');

