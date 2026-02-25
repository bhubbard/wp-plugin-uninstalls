<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_surror_tools_town_secret');
delete_site_option('_surror_tools_town_secret');
delete_option('surror_tools_town_info');
delete_site_option('surror_tools_town_info');

