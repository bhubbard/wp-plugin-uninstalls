<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rollback_settings');
delete_site_option('rollback_settings');

// Delete Transients
delete_transient('core_rollback');
delete_site_transient('core_rollback');
delete_transient('_core_rollback');
delete_site_transient('_core_rollback');
delete_transient('_core_rollback_offers');
delete_site_transient('_core_rollback_offers');

