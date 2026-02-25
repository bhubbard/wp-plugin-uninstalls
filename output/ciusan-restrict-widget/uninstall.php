<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ciusan_restrict_widget_option');
delete_site_option('ciusan_restrict_widget_option');

