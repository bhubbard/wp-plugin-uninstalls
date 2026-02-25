<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('scf7e_entry_deleted');
delete_site_transient('scf7e_entry_deleted');
delete_transient('scf7e_admin_success');
delete_site_transient('scf7e_admin_success');
delete_transient('scf7e_admin_failed');
delete_site_transient('scf7e_admin_failed');

