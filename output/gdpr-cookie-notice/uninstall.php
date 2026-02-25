<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gdprcn_options');
delete_site_option('gdprcn_options');
delete_option('gdprcn_version');
delete_site_option('gdprcn_version');

