<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scc_pm_text_color');
delete_site_option('scc_pm_text_color');
delete_option('course_display_settings');
delete_site_option('course_display_settings');

