<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emotify_key');
delete_site_option('emotify_key');
delete_option('emotify_check_box');
delete_site_option('emotify_check_box');

