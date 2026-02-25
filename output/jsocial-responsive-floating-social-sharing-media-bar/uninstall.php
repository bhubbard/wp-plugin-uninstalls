<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jsocial_options');
delete_site_option('jsocial_options');
delete_option('jsocial_styles');
delete_site_option('jsocial_styles');
delete_option('jsocial_attr');
delete_site_option('jsocial_attr');
delete_option('jsocial_display');
delete_site_option('jsocial_display');

