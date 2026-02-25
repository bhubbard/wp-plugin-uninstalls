<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('senderemail');
delete_site_option('senderemail');
delete_option('sendername');
delete_site_option('sendername');

