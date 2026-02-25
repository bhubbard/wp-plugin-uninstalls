<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orbisius_child_theme_creator_options');
delete_site_option('orbisius_child_theme_creator_options');
delete_option('allowedthemes');
delete_site_option('allowedthemes');

