<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spos_settings');
delete_site_option('spos_settings');

// Delete Transients
delete_transient('spos-activation');
delete_site_transient('spos-activation');

