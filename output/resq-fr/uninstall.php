<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tutsplus-custom-data');
delete_site_option('tutsplus-custom-data');
delete_option('ResQ-custom-Position');
delete_site_option('ResQ-custom-Position');

