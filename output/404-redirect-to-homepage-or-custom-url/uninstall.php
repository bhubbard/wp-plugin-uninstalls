<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dp_404_redirect_enabled');
delete_site_option('dp_404_redirect_enabled');
delete_option('dp_404_redirect_url');
delete_site_option('dp_404_redirect_url');

// Delete Transients
delete_transient('dp_404_show_tracking_notice');
delete_site_transient('dp_404_show_tracking_notice');

