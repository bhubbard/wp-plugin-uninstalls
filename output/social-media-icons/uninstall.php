<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_iconset');
delete_site_option('default_iconset');
delete_option('first_save');
delete_site_option('first_save');

