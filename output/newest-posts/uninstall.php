<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mkrdip_new_post_thumb_sizes');
delete_site_option('mkrdip_new_post_thumb_sizes');

