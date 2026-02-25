<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jbafe_dismiss');
delete_site_option('jbafe_dismiss');
delete_option('jbafe-top-notice');
delete_site_option('jbafe-top-notice');

