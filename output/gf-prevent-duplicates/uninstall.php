<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gfpd_post_taxonomies');
delete_site_option('gfpd_post_taxonomies');
delete_option('gfpd_excluded_ids');
delete_site_option('gfpd_excluded_ids');

