<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmdm_selected_post_types');
delete_site_option('pmdm_selected_post_types');
delete_option('pmdm_selected_taxonomies');
delete_site_option('pmdm_selected_taxonomies');

