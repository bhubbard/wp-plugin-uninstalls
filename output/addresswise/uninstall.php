<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addresswise_settings_input_field');
delete_site_option('addresswise_settings_input_field');

