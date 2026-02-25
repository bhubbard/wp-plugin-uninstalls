<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mtags_keywords');
delete_site_option('mtags_keywords');
delete_option('mtags_description');
delete_site_option('mtags_description');
delete_option('mtags_update');
delete_site_option('mtags_update');
delete_option('mtags_opt_description');
delete_site_option('mtags_opt_description');
delete_option('mtags_opt_keywords');
delete_site_option('mtags_opt_keywords');
delete_option('mtags_opt_rsd');
delete_site_option('mtags_opt_rsd');
delete_option('mtags_opt_wlwmanifest');
delete_site_option('mtags_opt_wlwmanifest');
delete_option('mtags_opt_generator');
delete_site_option('mtags_opt_generator');
delete_option('mtags_opt_start_post_rel');
delete_site_option('mtags_opt_start_post_rel');
delete_option('mtags_opt_index_rel');
delete_site_option('mtags_opt_index_rel');
delete_option('mtags_opt_adjacent_posts_rel');
delete_site_option('mtags_opt_adjacent_posts_rel');

