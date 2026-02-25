<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clearout_email_validator');
delete_site_option('clearout_email_validator');
delete_option('CLEAROUT_PLUGIN_VERSION');
delete_site_option('CLEAROUT_PLUGIN_VERSION');

