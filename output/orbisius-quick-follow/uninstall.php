<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orbisius_quick_follow_options');
delete_site_option('orbisius_quick_follow_options');

