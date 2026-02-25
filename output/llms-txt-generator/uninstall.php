<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llms_txt_generator_last_update');
delete_site_option('llms_txt_generator_last_update');
delete_option('llms_txt_generator_options');
delete_site_option('llms_txt_generator_options');
delete_option('llms_txt_generator_validation');
delete_site_option('llms_txt_generator_validation');

// Delete Transients
delete_transient('llms_txt_validation_errors');
delete_site_transient('llms_txt_validation_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('llms_txt_generator_monthly_update');

