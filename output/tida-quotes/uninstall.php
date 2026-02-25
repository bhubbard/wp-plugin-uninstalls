<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tida_quotes_enable_post_id');
delete_site_option('tida_quotes_enable_post_id');

