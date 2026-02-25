<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reaktiv-custom-css');
delete_site_option('reaktiv-custom-css');

// Delete Transients
delete_transient('rkvcss_check_protection_files');
delete_site_transient('rkvcss_check_protection_files');

