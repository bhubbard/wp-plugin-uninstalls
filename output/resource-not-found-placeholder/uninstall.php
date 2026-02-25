<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eos_rnfp_activation_info');
delete_site_option('eos_rnfp_activation_info');
delete_option('eos_rnfp_version');
delete_site_option('eos_rnfp_version');

// Delete Transients
delete_transient('rnfp-notice-fail');
delete_site_transient('rnfp-notice-fail');
delete_transient('eos-rnfp-notice-fail');
delete_site_transient('eos-rnfp-notice-fail');

