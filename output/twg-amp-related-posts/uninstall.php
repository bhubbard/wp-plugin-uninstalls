<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twg_amp_related_posts_count');
delete_site_option('twg_amp_related_posts_count');
delete_option('twg_amp_related_posts_orderby');
delete_site_option('twg_amp_related_posts_orderby');
delete_option('twg_amp_related_posts_show_thumbnail');
delete_site_option('twg_amp_related_posts_show_thumbnail');

