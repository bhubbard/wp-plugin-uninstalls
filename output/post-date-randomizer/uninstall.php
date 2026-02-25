<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdr_date1');
delete_site_option('pdr_date1');
delete_option('pdr_date2');
delete_site_option('pdr_date2');
delete_option('pdr_randomize_posts');
delete_site_option('pdr_randomize_posts');
delete_option('pdr_randomize_comments');
delete_site_option('pdr_randomize_comments');
delete_option('pdr_post_type');
delete_site_option('pdr_post_type');
delete_option('pdr_set_modified_date');
delete_site_option('pdr_set_modified_date');

// Delete Transients
delete_transient('pdr_randomize_notice');
delete_site_transient('pdr_randomize_notice');

