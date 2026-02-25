<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('randapigen_allowed_categories');
delete_site_option('randapigen_allowed_categories');

