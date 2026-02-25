<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPLS_storecomment');
delete_site_option('WPLS_storecomment');
delete_option('WPLS_storepost');
delete_site_option('WPLS_storepost');

