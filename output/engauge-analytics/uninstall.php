<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('engauge_options');
delete_site_option('engauge_options');
delete_option('ENGAUGE_options');
delete_site_option('ENGAUGE_options');

