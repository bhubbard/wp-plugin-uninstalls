<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('metadupo_allowed_roles');
delete_site_option('metadupo_allowed_roles');
delete_option('metadupo_post_status');
delete_site_option('metadupo_post_status');
delete_option('metadupo_post_author');
delete_site_option('metadupo_post_author');
delete_option('metadupo_post_date');
delete_site_option('metadupo_post_date');
delete_option('metadupo_allowed_post_types');
delete_site_option('metadupo_allowed_post_types');

