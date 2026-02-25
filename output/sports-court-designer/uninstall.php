<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('court_designer_logo_id');
delete_site_option('court_designer_logo_id');
delete_option('court_designer_logo_url');
delete_site_option('court_designer_logo_url');

