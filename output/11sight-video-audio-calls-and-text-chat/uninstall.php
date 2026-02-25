<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iisight_options');
delete_site_option('iisight_options');
delete_option('iisight_button_options');
delete_site_option('iisight_button_options');

