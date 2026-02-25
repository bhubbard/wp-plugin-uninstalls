<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sls_settings');
delete_site_option('sls_settings');

// Delete Transients
delete_transient('sls_show_notice');
delete_site_transient('sls_show_notice');

