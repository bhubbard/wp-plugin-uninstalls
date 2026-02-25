<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ris_related_post_related_by');
delete_site_option('ris_related_post_related_by');
delete_option('ris_related_post_number_of_posts');
delete_site_option('ris_related_post_number_of_posts');
delete_option('ris_related_post_display_layout');
delete_site_option('ris_related_post_display_layout');

