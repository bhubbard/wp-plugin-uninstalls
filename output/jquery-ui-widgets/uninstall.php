<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jquiw_options');
delete_site_option('jquiw_options');

// Delete Transients
delete_transient('jquiw-admin-notice');
delete_site_transient('jquiw-admin-notice');

