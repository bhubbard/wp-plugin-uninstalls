<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('action_scheduler_retention_period');
delete_site_option('action_scheduler_retention_period');

