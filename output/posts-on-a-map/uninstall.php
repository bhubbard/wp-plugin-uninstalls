<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jc_posts_map_id');
delete_site_option('jc_posts_map_id');
delete_option('jc_icon_url');
delete_site_option('jc_icon_url');

