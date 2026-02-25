<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_profile_widget_installed');
delete_site_option('easy_profile_widget_installed');
delete_option('easy_profile_widget_rating');
delete_site_option('easy_profile_widget_rating');

