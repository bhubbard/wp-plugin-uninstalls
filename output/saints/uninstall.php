<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('saints_option');
delete_site_option('saints_option');
delete_option('deleteIcons');
delete_site_option('deleteIcons');
delete_option('showicons');
delete_site_option('showicons');
delete_option('link');
delete_site_option('link');

