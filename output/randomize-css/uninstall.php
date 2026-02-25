<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('randomize_css');
delete_site_option('randomize_css');
delete_option('widget_authors');
delete_site_option('widget_authors');

