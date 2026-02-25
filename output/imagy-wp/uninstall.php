<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('could_front_url');
delete_site_option('could_front_url');
delete_option('imagy_is_working');
delete_site_option('imagy_is_working');

