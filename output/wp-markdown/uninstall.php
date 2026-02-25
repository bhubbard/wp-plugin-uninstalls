<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('markdown_version');
delete_site_option('markdown_version');
delete_option('markdown');
delete_site_option('markdown');

