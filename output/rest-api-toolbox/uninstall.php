<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rest-api-toolbox-plugin-activated');
delete_site_option('rest-api-toolbox-plugin-activated');

