<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msov_track_enabled');
delete_site_option('msov_track_enabled');
delete_option('msov_conversation_params');
delete_site_option('msov_conversation_params');
delete_option('msov_enabled');
delete_site_option('msov_enabled');
delete_option('msov_verification_params');
delete_site_option('msov_verification_params');

