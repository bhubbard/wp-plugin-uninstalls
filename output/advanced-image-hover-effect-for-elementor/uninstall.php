<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aihee_dismiss');
delete_site_option('aihee_dismiss');
delete_option('aihee-top-notice');
delete_site_option('aihee-top-notice');

