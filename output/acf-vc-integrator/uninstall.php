<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acfvc_default');
delete_site_option('acfvc_default');
delete_option('acfvc_version');
delete_site_option('acfvc_version');

