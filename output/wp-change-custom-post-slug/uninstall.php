<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('th-wp-change-custom-post-slugs-settings');
delete_site_option('th-wp-change-custom-post-slugs-settings');

