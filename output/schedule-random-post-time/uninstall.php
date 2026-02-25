<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srpt_options');
delete_site_option('srpt_options');
delete_option('srpt_version');
delete_site_option('srpt_version');
delete_option('srpt_futurehours');
delete_site_option('srpt_futurehours');

