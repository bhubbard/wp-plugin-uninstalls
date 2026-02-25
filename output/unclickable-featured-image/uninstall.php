<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unclickable_options_hook');
delete_site_option('unclickable_options_hook');
delete_option('unclickable_options_select');
delete_site_option('unclickable_options_select');
delete_option('unclickable_options_thumbnail');
delete_site_option('unclickable_options_thumbnail');
delete_option('unclickable_options_selector');
delete_site_option('unclickable_options_selector');
delete_option('unclickable_options_all');
delete_site_option('unclickable_options_all');
delete_option('unclickable_options_link');
delete_site_option('unclickable_options_link');
delete_option('unclickable_options_img');
delete_site_option('unclickable_options_img');
delete_option('unclickable_options_background');
delete_site_option('unclickable_options_background');

