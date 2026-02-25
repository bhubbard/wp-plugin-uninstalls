<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple-fonts-loader-activated');
delete_site_option('simple-fonts-loader-activated');
delete_option('simple-fonts-loader-favorites');
delete_site_option('simple-fonts-loader-favorites');

