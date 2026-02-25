<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awal-font-size');
delete_site_option('awal-font-size');
delete_option('awal-cooldown');
delete_site_option('awal-cooldown');

