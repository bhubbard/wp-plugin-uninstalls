<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recooty_widget_id');
delete_site_option('recooty_widget_id');
delete_option('recooty_widget_language');
delete_site_option('recooty_widget_language');
delete_option('recooty_widget_jobsperpage');
delete_site_option('recooty_widget_jobsperpage');

