<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tailtarget_tracking');
delete_site_option('tailtarget_tracking');
delete_option('tt_tracking');
delete_site_option('tt_tracking');

