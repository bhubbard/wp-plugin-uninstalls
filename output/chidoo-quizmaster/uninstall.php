<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chiqm_applist');
delete_site_option('chiqm_applist');
delete_option('chiqm_custom_appdir');
delete_site_option('chiqm_custom_appdir');
delete_option('chiqm_custom_appurl');
delete_site_option('chiqm_custom_appurl');

