<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ls_cb_kurs');
delete_site_option('ls_cb_kurs');

// Clear Cron Jobs
wp_clear_scheduled_hook('ls_cb_update_curse');

