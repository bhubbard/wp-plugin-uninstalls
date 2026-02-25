<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('searchenginesnitch_email');
delete_site_option('searchenginesnitch_email');
delete_option('searchenginesnitch_frequency');
delete_site_option('searchenginesnitch_frequency');

// Delete Transients
delete_transient('searchenginesnitch_activation_notice');
delete_site_transient('searchenginesnitch_activation_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('searchenginesnitch_visibility_check');

