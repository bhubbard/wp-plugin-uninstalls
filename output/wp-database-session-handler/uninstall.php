<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_session_handler_clean_on_open');
delete_site_option('sc_session_handler_clean_on_open');
delete_option('sc_session_handler_clean_on_gc');
delete_site_option('sc_session_handler_clean_on_gc');
delete_option('sc_session_handler_clean_every');
delete_site_option('sc_session_handler_clean_every');
delete_option('sc_session_handler_version');
delete_site_option('sc_session_handler_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('sc_mysqlsession_cron_hook');

