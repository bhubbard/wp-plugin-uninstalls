<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('last_execute');
delete_site_option('last_execute');
delete_option('smtp_ce-recurrence');
delete_site_option('smtp_ce-recurrence');

