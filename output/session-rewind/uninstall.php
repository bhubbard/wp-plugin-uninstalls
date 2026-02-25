<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('session_rewind_api_key');
delete_site_option('session_rewind_api_key');
delete_option('session_rewind_start_recording');
delete_site_option('session_rewind_start_recording');
delete_option('session_rewind_create_new_session');
delete_site_option('session_rewind_create_new_session');

