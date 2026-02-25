<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('af2_free_version');
delete_site_option('af2_free_version');
delete_option('af2_dark_mode');
delete_site_option('af2_dark_mode');
delete_option('af2_categories');
delete_site_option('af2_categories');
delete_option('checklist_question');
delete_site_option('checklist_question');
delete_option('checklist_contactform');
delete_site_option('checklist_contactform');
delete_option('checklist_form');
delete_site_option('checklist_form');
delete_option('checklist_shortcode');
delete_site_option('checklist_shortcode');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('klicktipp_user');
delete_site_option('klicktipp_user');
delete_option('klicktipp_pw');
delete_site_option('klicktipp_pw');
delete_option('af2_custom_system_no_nl2br');
delete_site_option('af2_custom_system_no_nl2br');
delete_option('af2_version_num_');
delete_site_option('af2_version_num_');
delete_option('af2_version');
delete_site_option('af2_version');
delete_option('af2_question_categories');
delete_site_option('af2_question_categories');
delete_option('af2_verification_codes');
delete_site_option('af2_verification_codes');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

