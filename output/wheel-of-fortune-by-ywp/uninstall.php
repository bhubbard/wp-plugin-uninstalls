<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wheel_of_fortune_by_ywp_widget_option_name');
delete_site_option('wheel_of_fortune_by_ywp_widget_option_name');

