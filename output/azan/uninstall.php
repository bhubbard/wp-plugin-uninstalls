<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('azan_opt');
delete_site_option('azan_opt');
delete_option('azan_redirect_after_activation_option');
delete_site_option('azan_redirect_after_activation_option');

