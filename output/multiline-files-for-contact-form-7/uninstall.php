<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mfcf7-zl-admin-do-not-show-pro-tip');
delete_site_option('mfcf7-zl-admin-do-not-show-pro-tip');
delete_option('mfcf7-zl-admin-do-not-show-rating-tip');
delete_site_option('mfcf7-zl-admin-do-not-show-rating-tip');
delete_option('mfcf7_zl_plugin_deactivate_request');
delete_site_option('mfcf7_zl_plugin_deactivate_request');

// Delete Transients
delete_transient('mfcf7-zl-admin-do-not-show-pro-tip');
delete_site_transient('mfcf7-zl-admin-do-not-show-pro-tip');
delete_transient('mfcf7-zl-admin-do-not-show-rating-tip');
delete_site_transient('mfcf7-zl-admin-do-not-show-rating-tip');
delete_transient('mfcf7_zl_deactivation_error');
delete_site_transient('mfcf7_zl_deactivation_error');

