<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('check1');
delete_site_option('check1');
delete_option('check2');
delete_site_option('check2');

