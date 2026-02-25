<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tamed_theme');
delete_site_option('tamed_theme');
delete_option('tamed_logo');
delete_site_option('tamed_logo');
delete_option('tamed_id');
delete_site_option('tamed_id');

