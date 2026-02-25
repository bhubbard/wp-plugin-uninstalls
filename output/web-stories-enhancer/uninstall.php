<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wse_settings');
delete_site_option('wse_settings');
delete_option('wse_activation_redirect');
delete_site_option('wse_activation_redirect');

