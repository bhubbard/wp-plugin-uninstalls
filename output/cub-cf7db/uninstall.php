<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cubcf7db_view_install_date');
delete_site_option('cubcf7db_view_install_date');
delete_option('cubcf7db_options');
delete_site_option('cubcf7db_options');

// Delete Transients
delete_transient('cubcf7db_blog_ids_transient');
delete_site_transient('cubcf7db_blog_ids_transient');

