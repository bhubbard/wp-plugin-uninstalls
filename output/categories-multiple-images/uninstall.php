<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmi_total_images');
delete_site_option('cmi_total_images');
delete_option('cmi_exclude_taxonomies');
delete_site_option('cmi_exclude_taxonomies');

