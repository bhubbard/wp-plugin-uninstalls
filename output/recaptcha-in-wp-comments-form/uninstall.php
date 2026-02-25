<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('griwpc-params');
delete_site_option('griwpc-params');
delete_option('cool-griwpc');
delete_site_option('cool-griwpc');
delete_option('cool-griwpc-ver');
delete_site_option('cool-griwpc-ver');

