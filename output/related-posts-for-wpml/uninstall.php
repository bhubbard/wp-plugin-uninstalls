<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('related_posts_for_wpml_settings');
delete_site_option('related_posts_for_wpml_settings');

