<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scfa-asset-type');
delete_site_option('scfa-asset-type');
delete_option('scfa-default-style');
delete_site_option('scfa-default-style');
delete_option('scfa-asset-url');
delete_site_option('scfa-asset-url');
delete_option('scfa-remove-settings');
delete_site_option('scfa-remove-settings');

