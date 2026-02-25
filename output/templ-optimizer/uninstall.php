<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('templ_optimizer_settings');
delete_site_option('templ_optimizer_settings');
delete_option('templio_app_id');
delete_site_option('templio_app_id');

