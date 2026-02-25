<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pl_peertube_url');
delete_site_option('pl_peertube_url');
delete_option('nice_page_transition_type');
delete_site_option('nice_page_transition_type');

