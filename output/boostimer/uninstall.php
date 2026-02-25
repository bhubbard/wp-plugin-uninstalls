<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boostimer_installed');
delete_site_option('boostimer_installed');
delete_option('boostimer_version');
delete_site_option('boostimer_version');

