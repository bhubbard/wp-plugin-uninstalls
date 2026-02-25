<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpNamedUsers_groups_default');
delete_site_option('wpNamedUsers_groups_default');

