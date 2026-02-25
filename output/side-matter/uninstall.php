<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('side_matter_options');
delete_site_option('side_matter_options');
delete_option('widget_side-matter');
delete_site_option('widget_side-matter');

