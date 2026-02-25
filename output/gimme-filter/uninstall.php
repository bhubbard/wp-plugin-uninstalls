<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taxonomies_list');
delete_site_option('taxonomies_list');
delete_option('post_type_list');
delete_site_option('post_type_list');
delete_option('gimme_output_options');
delete_site_option('gimme_output_options');

