<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitteraccountbox_options');
delete_site_option('twitteraccountbox_options');

// Delete Transients
delete_transient('twitteraccountbox_transient');
delete_site_transient('twitteraccountbox_transient');

