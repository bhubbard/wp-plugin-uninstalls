<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toggle_post_type_visibility_options');
delete_site_option('toggle_post_type_visibility_options');

