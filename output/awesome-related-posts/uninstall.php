<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arp_related_post_settings');
delete_site_option('arp_related_post_settings');
delete_option('arp_related_post_query_all_posts');
delete_site_option('arp_related_post_query_all_posts');

