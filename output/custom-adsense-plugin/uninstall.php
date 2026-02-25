<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('expertpost_options_posthtml');
delete_site_option('expertpost_options_posthtml');
delete_option('expertpost_options_classname');
delete_site_option('expertpost_options_classname');
delete_option('expertpost_options_homeposturl');
delete_site_option('expertpost_options_homeposturl');
delete_option('expertpost_options_singleposturl');
delete_site_option('expertpost_options_singleposturl');

