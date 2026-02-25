<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfmfwc_enable');
delete_site_option('cfmfwc_enable');
delete_option('cfmfwc_fees');
delete_site_option('cfmfwc_fees');

