<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpsons-gags');
delete_site_option('simpsons-gags');
delete_option('simpsons-first-run');
delete_site_option('simpsons-first-run');
delete_option('simpsons-error');
delete_site_option('simpsons-error');

// Clear Cron Jobs
wp_clear_scheduled_hook('simpsons-gag-update');

