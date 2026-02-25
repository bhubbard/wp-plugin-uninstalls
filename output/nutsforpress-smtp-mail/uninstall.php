<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_nfproot_plugins_settings');
delete_site_option('_nfproot_plugins_settings');
delete_option('_nfp_root_settings');
delete_site_option('_nfp_root_settings');
delete_option('_nfp_settings');
delete_site_option('_nfp_settings');

