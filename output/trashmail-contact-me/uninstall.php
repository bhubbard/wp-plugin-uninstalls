<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trashmail_options');
delete_site_option('trashmail_options');

// Delete Transients
delete_transient('trashmail_session_id');
delete_site_transient('trashmail_session_id');

