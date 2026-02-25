<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sahu_so_contact');
delete_site_option('sahu_so_contact');
delete_option('sahu_so_countdown');
delete_site_option('sahu_so_countdown');
delete_option('sahu_so_dashboard');
delete_site_option('sahu_so_dashboard');
delete_option('sahu_so_design');
delete_site_option('sahu_so_design');
delete_option('sahu_so_seo');
delete_site_option('sahu_so_seo');
delete_option('sahu_so_social');
delete_site_option('sahu_so_social');
delete_option('sahu_siteoff_line_review');
delete_site_option('sahu_siteoff_line_review');

