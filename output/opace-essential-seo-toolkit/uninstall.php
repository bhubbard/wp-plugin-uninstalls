<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eseot_categories');
delete_site_option('eseot_categories');
delete_option('eseot_sources');
delete_site_option('eseot_sources');
delete_option('eseot_version');
delete_site_option('eseot_version');
delete_option('eseot_post_types');
delete_site_option('eseot_post_types');

