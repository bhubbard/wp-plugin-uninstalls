<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('set_flakeCount');
delete_site_option('set_flakeCount');
delete_option('set_minSize');
delete_site_option('set_minSize');
delete_option('set_maxSize');
delete_site_option('set_maxSize');
delete_option('set_maxSpeed');
delete_site_option('set_maxSpeed');

