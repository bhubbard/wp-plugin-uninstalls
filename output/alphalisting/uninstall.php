<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alphalisting-add-styling');
delete_site_option('alphalisting-add-styling');
delete_option('alphalisting-add-tabs');
delete_site_option('alphalisting-add-tabs');

