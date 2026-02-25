<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stames_floating_data_key');
delete_site_option('stames_floating_data_key');
delete_option('stames_floating_widget_type');
delete_site_option('stames_floating_widget_type');

