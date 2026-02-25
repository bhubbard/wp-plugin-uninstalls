<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liquid_blocks_toggle');
delete_site_option('liquid_blocks_toggle');
delete_option('liquid_blocks_no');
delete_site_option('liquid_blocks_no');
delete_option('liquid_blocks_type');
delete_site_option('liquid_blocks_type');
delete_option('liquid_blocks_name');
delete_site_option('liquid_blocks_name');
delete_option('liquid_blocks_clean');
delete_site_option('liquid_blocks_clean');

// Delete Transients
delete_transient('liquid_admin_notices');
delete_site_transient('liquid_admin_notices');
delete_transient('liquid_admin_offer');
delete_site_transient('liquid_admin_offer');

