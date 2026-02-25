<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mk_dpp_update_posts_allowed');
delete_site_option('mk_dpp_update_posts_allowed');

