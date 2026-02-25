<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theghostlab_cycle_db_version');
delete_site_option('theghostlab_cycle_db_version');

