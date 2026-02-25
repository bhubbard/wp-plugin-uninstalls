<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushninja_website');
delete_site_option('pushninja_website');
delete_option('user_token');
delete_site_option('user_token');

