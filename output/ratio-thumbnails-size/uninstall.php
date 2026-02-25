<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ratiothumbnailssize');
delete_site_option('ratiothumbnailssize');
delete_option('ratiothumbnailssize_disable');
delete_site_option('ratiothumbnailssize_disable');

