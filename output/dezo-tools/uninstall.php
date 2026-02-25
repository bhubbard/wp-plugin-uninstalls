<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dezo-ganalytics-id');
delete_site_option('dezo-ganalytics-id');
delete_option('dezo-custom-header');
delete_site_option('dezo-custom-header');
delete_option('dezo-custom-footer');
delete_site_option('dezo-custom-footer');
delete_option('dezo-hide-wp-header-details');
delete_site_option('dezo-hide-wp-header-details');
delete_option('dezo-disable-emojis');
delete_site_option('dezo-disable-emojis');
delete_option('dezo-enable-html-minify');
delete_site_option('dezo-enable-html-minify');
delete_option('dezo-enable-lightbox');
delete_site_option('dezo-enable-lightbox');

