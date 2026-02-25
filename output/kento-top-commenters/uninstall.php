<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('top_commenters_widget_title');
delete_site_option('top_commenters_widget_title');
delete_option('top_commenters_widget_number');
delete_site_option('top_commenters_widget_number');
delete_option('ktc_style');
delete_site_option('ktc_style');

