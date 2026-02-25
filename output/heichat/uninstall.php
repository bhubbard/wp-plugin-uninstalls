<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('heichat_login');
delete_site_option('heichat_login');
delete_option('heichat_js_url');
delete_site_option('heichat_js_url');
delete_option('heichat_integrate');
delete_site_option('heichat_integrate');

