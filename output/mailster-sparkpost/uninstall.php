<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_transient__mailster_send_period');
delete_site_option('_transient__mailster_send_period');

// Delete Transients
delete_transient('mailster_check_bounces_lock');
delete_site_transient('mailster_check_bounces_lock');
delete_transient('_mailster_sparkpost_last_bounce_check');
delete_site_transient('_mailster_sparkpost_last_bounce_check');

