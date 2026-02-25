<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('commentby_settings');
delete_site_option('commentby_settings');

// Delete Transients
delete_transient('commentby_activation_notice');
delete_site_transient('commentby_activation_notice');

