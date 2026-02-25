<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcpl_welcome');
delete_site_option('pcpl_welcome');
delete_option('pcpl_follow_config');
delete_site_option('pcpl_follow_config');
delete_option('pcpl_follow_enabled');
delete_site_option('pcpl_follow_enabled');

// Delete Transients
delete_transient('pcpl_activation_redirect_transient');
delete_site_transient('pcpl_activation_redirect_transient');

