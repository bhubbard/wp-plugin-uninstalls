<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfwa_widget_setting');
delete_site_option('sfwa_widget_setting');
delete_option('sfwa_layout_setting');
delete_site_option('sfwa_layout_setting');

