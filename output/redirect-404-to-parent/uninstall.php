<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moove_404_redirect_options');
delete_site_option('moove_404_redirect_options');
delete_option('moove_404_redirect_statistics');
delete_site_option('moove_404_redirect_statistics');
delete_option('moove_404_general_options');
delete_site_option('moove_404_general_options');
delete_option('moove_options');
delete_site_option('moove_options');
delete_option('moove_404_redirect_activate');
delete_site_option('moove_404_redirect_activate');

