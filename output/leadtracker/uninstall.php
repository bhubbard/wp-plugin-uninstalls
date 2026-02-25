<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LTK_OAUTH_TOKEN');
delete_site_option('LTK_OAUTH_TOKEN');
delete_option('LTK_ID');
delete_site_option('LTK_ID');

