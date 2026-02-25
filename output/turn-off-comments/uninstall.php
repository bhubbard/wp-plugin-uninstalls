<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('turn_off_comments_installed');
delete_site_option('turn_off_comments_installed');

// Delete Transients
delete_transient('turn-off-comments-notification');
delete_site_transient('turn-off-comments-notification');

