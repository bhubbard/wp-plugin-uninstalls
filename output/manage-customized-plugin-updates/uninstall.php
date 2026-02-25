<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsx_mcpu_plugin_do_activation_redirect');
delete_site_option('wsx_mcpu_plugin_do_activation_redirect');
delete_option('wsx_set_user_accs');
delete_site_option('wsx_set_user_accs');

// Delete Transients
delete_transient('wsx-mcpu-active-admin-notice');
delete_site_transient('wsx-mcpu-active-admin-notice');

