<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppatr-links');
delete_site_option('wppatr-links');
delete_option('wppatr-not-links');
delete_site_option('wppatr-not-links');
delete_option('wppatr-page-selector');
delete_site_option('wppatr-page-selector');
delete_option('wppatr-remove-scroll-bar');
delete_site_option('wppatr-remove-scroll-bar');
delete_option('wppatr-page');
delete_site_option('wppatr-page');
delete_option('wppatr-overlay');
delete_site_option('wppatr-overlay');
delete_option('wppatr-loader');
delete_site_option('wppatr-loader');
delete_option('wppatr-active-transitions');
delete_site_option('wppatr-active-transitions');

