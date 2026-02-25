<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_sidebar_menu_widget_RatingDiv');
delete_site_option('easy_sidebar_menu_widget_RatingDiv');
delete_option('easy_sidebar_menu_widget_installDate');
delete_site_option('easy_sidebar_menu_widget_installDate');

