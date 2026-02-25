<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pinterest_master_system_wide');
delete_site_option('pinterest_master_system_wide');
delete_option('pinterest_master_system_wide_size_small');
delete_site_option('pinterest_master_system_wide_size_small');
delete_option('pinterest_master_system_wide_size_large');
delete_site_option('pinterest_master_system_wide_size_large');
delete_option('pinterest_master_system_wide_shape_rectangular');
delete_site_option('pinterest_master_system_wide_shape_rectangular');
delete_option('pinterest_master_system_wide_shape_circular');
delete_site_option('pinterest_master_system_wide_shape_circular');
delete_option('pinterest_master_system_wide_size');
delete_site_option('pinterest_master_system_wide_size');
delete_option('pinterest_master_system_wide_shape');
delete_site_option('pinterest_master_system_wide_shape');
delete_option('pinterest_master_system_wide_hover');
delete_site_option('pinterest_master_system_wide_hover');
delete_option('tsm_quote');
delete_site_option('tsm_quote');

