<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticky_anything_options');
delete_site_option('sticky_anything_options');
delete_option('sticky_dismissed_notices');
delete_site_option('sticky_dismissed_notices');

