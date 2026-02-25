<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crrq_wp_slug_post_type_custom_language');
delete_site_option('crrq_wp_slug_post_type_custom_language');

