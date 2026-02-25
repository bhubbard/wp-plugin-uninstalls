<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('possibly_related_recent_posts');
delete_site_option('possibly_related_recent_posts');

