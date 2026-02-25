<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('molzait_restaurant_id');
delete_site_option('molzait_restaurant_id');
delete_option('molzait_initial_color');
delete_site_option('molzait_initial_color');
delete_option('molzait_open_selectors');
delete_site_option('molzait_open_selectors');
delete_option('molzait_hide_button');
delete_site_option('molzait_hide_button');

