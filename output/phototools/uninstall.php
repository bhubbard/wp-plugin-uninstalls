<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phototools_options');
delete_site_option('phototools_options');
delete_option('phototools_list');
delete_site_option('phototools_list');
delete_option('photoToolsWidget_options');
delete_site_option('photoToolsWidget_options');

