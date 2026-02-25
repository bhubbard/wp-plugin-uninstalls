<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tz_email');
delete_site_option('tz_email');
delete_option('formstyle');
delete_site_option('formstyle');
delete_option('dpbsf_plugin_do_activation_redirect');
delete_site_option('dpbsf_plugin_do_activation_redirect');

