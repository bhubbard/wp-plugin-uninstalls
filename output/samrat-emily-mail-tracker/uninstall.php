<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('samrat_emily_mail_tracker_cleanup_lock');
delete_site_transient('samrat_emily_mail_tracker_cleanup_lock');

