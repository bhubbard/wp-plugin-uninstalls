<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsde_disable_default_css');
delete_site_option('wpsde_disable_default_css');
delete_option('wpsde_user_css');
delete_site_option('wpsde_user_css');

