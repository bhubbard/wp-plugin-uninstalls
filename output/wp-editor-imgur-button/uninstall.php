<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addcomment');
delete_site_option('addcomment');
delete_option('clientid');
delete_site_option('clientid');

