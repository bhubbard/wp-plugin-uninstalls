<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sptp_queue_flush_rewrite_rules');
delete_site_option('sptp_queue_flush_rewrite_rules');
delete_option('sptp_options');
delete_site_option('sptp_options');

