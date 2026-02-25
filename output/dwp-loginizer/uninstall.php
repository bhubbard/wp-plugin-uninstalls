<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwp-loginizer-custom-css');
delete_site_option('dwp-loginizer-custom-css');
delete_option('dwp-loginizer-field-options');
delete_site_option('dwp-loginizer-field-options');

