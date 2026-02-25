<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('filter_sorter_display_options');
delete_site_option('filter_sorter_display_options');
delete_option('filter_sorter_social_options');
delete_site_option('filter_sorter_social_options');
delete_option('sorter_display_options');
delete_site_option('sorter_display_options');
delete_option('sorter_social_options');
delete_site_option('sorter_social_options');

