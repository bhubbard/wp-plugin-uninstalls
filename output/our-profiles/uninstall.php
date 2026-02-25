<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ourprofiles_links');
delete_site_option('ourprofiles_links');
delete_option('ourprofiles_options');
delete_site_option('ourprofiles_options');
delete_option('ourprofiles_services');
delete_site_option('ourprofiles_services');

