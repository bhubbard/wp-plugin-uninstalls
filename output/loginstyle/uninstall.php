<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginstyle_css');
delete_site_option('loginstyle_css');
delete_option('loginstyle_version');
delete_site_option('loginstyle_version');

