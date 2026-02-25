<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('backend_category_organizer_config');
delete_site_option('backend_category_organizer_config');
delete_option('backend_category_organizer_option_name');
delete_site_option('backend_category_organizer_option_name');

