<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eihe_dismiss');
delete_site_option('eihe_dismiss');
delete_option('eihe_upgraded');
delete_site_option('eihe_upgraded');
delete_option('eihe-top-notice');
delete_site_option('eihe-top-notice');

