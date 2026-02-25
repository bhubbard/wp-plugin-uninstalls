<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('bp_beta_tester_pre_release');
delete_site_transient('bp_beta_tester_pre_release');

