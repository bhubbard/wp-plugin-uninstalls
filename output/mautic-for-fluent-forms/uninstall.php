<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_fluentform_mautic_settings');
delete_site_option('_fluentform_mautic_settings');
delete_option('fluentform_global_modules_status');
delete_site_option('fluentform_global_modules_status');

