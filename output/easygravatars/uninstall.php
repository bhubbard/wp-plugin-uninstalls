<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eg_size');
delete_site_option('eg_size');
delete_option('eg_rating');
delete_site_option('eg_rating');
delete_option('eg_defaulturl');
delete_site_option('eg_defaulturl');
delete_option('eg_style_span');
delete_site_option('eg_style_span');
delete_option('eg_style_img');
delete_site_option('eg_style_img');
delete_option('eg_api_hook');
delete_site_option('eg_api_hook');

