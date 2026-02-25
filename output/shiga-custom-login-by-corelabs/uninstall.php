<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cl_login_logo_url');
delete_site_option('cl_login_logo_url');
delete_option('cl_background_color');
delete_site_option('cl_background_color');

