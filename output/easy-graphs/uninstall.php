<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embed_size_w');
delete_site_option('embed_size_w');
delete_option('embed_size_h');
delete_site_option('embed_size_h');

