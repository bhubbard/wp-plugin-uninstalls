<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jawowtokendata');
delete_site_option('jawowtokendata');
delete_option('jawowtokentime');
delete_site_option('jawowtokentime');

