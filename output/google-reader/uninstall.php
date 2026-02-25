<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('googlereaderlogin');
delete_site_option('googlereaderlogin');
delete_option('googlereadercachedir');
delete_site_option('googlereadercachedir');
delete_option('googlereadercachelifetime');
delete_site_option('googlereadercachelifetime');
delete_option('googleredercachelifetime');
delete_site_option('googleredercachelifetime');
delete_option('googlereaderpassword');
delete_site_option('googlereaderpassword');

