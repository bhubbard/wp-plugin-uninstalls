<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blackwebsite_extra_options');
delete_site_option('blackwebsite_extra_options');
delete_option('blackwebsite_options');
delete_site_option('blackwebsite_options');
delete_option('blackwebsite_predefine_options');
delete_site_option('blackwebsite_predefine_options');
delete_option('blackwebsite_widget_options');
delete_site_option('blackwebsite_widget_options');

