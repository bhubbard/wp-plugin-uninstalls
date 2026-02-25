<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ovm_po_db_version');
delete_site_option('ovm_po_db_version');
delete_option('po_premium_info');
delete_site_option('po_premium_info');
delete_option('ovm_po_uninstall_delete');
delete_site_option('ovm_po_uninstall_delete');
delete_option('active_tab');
delete_site_option('active_tab');

