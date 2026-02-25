<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LOWF_options');
delete_site_option('LOWF_options');

// Delete Transients
delete_transient('transient');
delete_site_transient('transient');

