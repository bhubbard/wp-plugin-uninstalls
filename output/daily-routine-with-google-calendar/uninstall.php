<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gcal_api');
delete_site_option('gcal_api');
delete_option('gcal_id');
delete_site_option('gcal_id');

