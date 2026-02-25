<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('azc_dapc_options');
delete_site_option('azc_dapc_options');
delete_option('display_after_post_content');
delete_site_option('display_after_post_content');

