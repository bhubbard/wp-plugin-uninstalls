<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rmOptions');
delete_site_option('rmOptions');
delete_option('url');
delete_site_option('url');

