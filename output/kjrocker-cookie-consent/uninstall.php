<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocker_kjcookie');
delete_site_option('rocker_kjcookie');
delete_option('kj_version_number');
delete_site_option('kj_version_number');

