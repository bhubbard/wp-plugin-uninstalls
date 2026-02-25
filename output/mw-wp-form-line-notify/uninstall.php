<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('mw-wp-form-line-notify-errors');
delete_site_transient('mw-wp-form-line-notify-errors');
delete_transient('mw-wp-form-line-notify-updated');
delete_site_transient('mw-wp-form-line-notify-updated');

