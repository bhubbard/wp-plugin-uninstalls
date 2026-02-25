<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('obi_related_posts_limit');
delete_site_option('obi_related_posts_limit');
delete_option('obi_related_posts_title');
delete_site_option('obi_related_posts_title');
delete_option('obi_related_posts_list');
delete_site_option('obi_related_posts_list');
delete_option('obi_related_posts_heading');
delete_site_option('obi_related_posts_heading');

