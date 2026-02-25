<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ciwup_options');
delete_site_option('ciwup_options');

// Delete Transients
delete_transient('ciwup_settings_saved_notice');
delete_site_transient('ciwup_settings_saved_notice');

