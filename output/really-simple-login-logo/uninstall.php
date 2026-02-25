<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsll_logo_url');
delete_site_option('rsll_logo_url');
delete_option('rsll_logo_dimensions');
delete_site_option('rsll_logo_dimensions');
delete_option('rsll_settings');
delete_site_option('rsll_settings');
delete_option('rsll_version');
delete_site_option('rsll_version');

