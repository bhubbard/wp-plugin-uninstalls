<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_parts_auto_format_post_types');
delete_site_option('content_parts_auto_format_post_types');

