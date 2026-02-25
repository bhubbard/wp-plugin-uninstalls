<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('lgnl_total_user_count');
delete_site_transient('lgnl_total_user_count');
delete_transient('lgnl_user_list');
delete_site_transient('lgnl_user_list');

