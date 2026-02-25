<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('svg_support_enabled');
delete_site_option('svg_support_enabled');
delete_option('svg_support_restrict_admins');
delete_site_option('svg_support_restrict_admins');

