<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpha-configuration');
delete_site_option('wpha-configuration');
delete_option('wpha_options');
delete_site_option('wpha_options');
delete_option('wpha-customization');
delete_site_option('wpha-customization');

