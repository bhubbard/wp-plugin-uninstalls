<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('monitorlogin_email');
delete_site_option('monitorlogin_email');
delete_option('monitorlogin_plugs');
delete_site_option('monitorlogin_plugs');
delete_option('monitorlogin_themes');
delete_site_option('monitorlogin_themes');

